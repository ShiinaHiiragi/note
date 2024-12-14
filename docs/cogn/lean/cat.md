# 2 句法范畴

## 2.1 指令范畴
### 2.1.1 定义与声明
1. 定义与声明的相关解析器
    1. `declId`：可能跟随宇宙名称列表的标识符，形如 `foo` 或 `foo.{u,v}`

        ```lean
        def declId := leading_parser ident
          >> optional (".{"
            >> sepBy1 (recover
              ident
              (skipUntil (fun c =>c.isWhitespace || c ∈ [',', '}']))
            ) ", "
            >> "}"
          )
        ```

    2. `declSig` 与 `optDeclSig`：常量声明时的（可选）参数列表与类型标注，形如 `[...] : type`

        ```lean
        def declSig := leading_parser many (ppSpace
          >> (Term.binderIdent <|> Term.bracketedBinder)
        )
          >> Term.typeSpec

        def optDeclSig := leading_parser many (ppSpace
          >> (Term.binderIdent <|> Term.bracketedBinder)
        )
          >> Term.optType
        ```

    3. `declVal`：声明的右半部分，分为三种形式

        ```lean
        @[run_builtin_parser_attribute_hooks]
        def Term.whereDecls := leading_parser ppDedent ppLine
          >> "where"
          >> sepBy1Indent (ppGroup letRecDecl) "; " (allowTrailingSep := true)

        def declBody : Parser := lookahead (setExpected [] "by")
          >> termParser leadPrec <|> termParser
        def declValSimple := leading_parser " :="
          >> ppHardLineUnlessUngrouped
          >> declBody
          >> Termination.suffix
          >> optional Term.whereDecls

        @[run_builtin_parser_attribute_hooks]
        def matchAltsWhereDecls := leading_parser matchAlts
          >> Termination.suffix
          >> optional whereDecls
        def declValEqns := leading_parser Term.matchAltsWhereDecls

        def whereStructField := leading_parser Term.letDecl
        def whereStructInst := leading_parser ppIndent ppSpace
          >> "where"
          >> sepByIndent (ppGroup whereStructField) "; " (allowTrailingSep := true)
          >> optional Term.whereDecls

        def declVal := withAntiquot (mkAntiquot
          "declVal"
          `Lean.Parser.Command.declVal
          (isPseudoKind := true)
        )
          <| declValSimple <|> declValEqns <|> whereStructInst
        ```

        1. `whereDecls`：一系列临时定义，也可用 `let` 代替
        2. `declValSimple`：形如 `:= expr`，用于简单声明
        3. `declValEqns`：一系列 `| pat => expr`，用于模式匹配定义
        4. `whereStructInst`：`where` 及跟随于其后的 `field := value`，用于结构体与类型类

    4. `optDeriving`：要求 Lean 生成代码

        ```lean
        def derivingClasses := sepBy1 (group
          (ident >> optional (" with " >> ppIndent Term.structInst))
        ) ", "
        def optDeriving := leading_parser optional (ppLine
          >> atomic ("deriving " >> notSymbol "instance")
          >> derivingClasses
        )
        ```

2. `declaration`：常量声明

    ```lean
    @[builtin_command_parser]
    def declaration := leading_parser declModifiers false
      >> («abbrev»
        <|> definition
        <|> «theorem»
        <|> «opaque»
        <|> «instance»
        <|> «axiom»
        <|> «example»
        <|> «inductive»
        <|> classInductive
        <|> «structure»
      )
    ```

    1. `«abbrev»`：缩写，Lean 会将其标记为可约定义（即可展开的定义）

        ```lean
        def «abbrev» := leading_parser "abbrev "
          >> declId
          >> ppIndent optDeclSig
          >> declVal
        ```

    2. `definition`：定义常量

        ```lean
        def optDefDeriving := optional (ppDedent ppLine
          >> atomic ("deriving " >> notSymbol "instance")
          >> sepBy1 ident ", "
        )

        def definition := leading_parser "def "
          >> recover declId skipUntilWsOrDelim
          >> ppIndent optDeclSig
          >> declVal
          >> optDefDeriving
        ```

    3. `«theorem»`：基本与 `definition` 一致，习惯上用于定理证明

        ```lean
        def «theorem» := leading_parser "theorem "
          >> recover declId skipUntilWsOrDelim
          >> ppIndent declSig
          >> declVal
        ```

    4. `«opaque»`：不透明常量．不执行类型检查，未提供值时利用 `Inhabited` 类型类创建默认值

        ```lean
        def «opaque» := leading_parser "opaque "
          >> recover declId skipUntilWsOrDelim
          >> ppIndent declSig
          >> optional declValSimple
        ```

    5. `«instance»`：类型类重载实例

        ```lean
        def «instance» := leading_parser Term.attrKind
          >> "instance"
          >> optNamedPrio
          >> optional (ppSpace >> declId)
          >> ppIndent declSig
          >> declVal
        ```

    6. `«axiom»`：声明公理，可能破坏逻辑一致性

        ```lean
        def «axiom» := leading_parser "axiom "
          >> recover declId skipUntilWsOrDelim
          >> ppIndent declSig
        ```

    7. `«example»`：声明一个无名且不永久保存的定理

        ```lean
        def «example» := leading_parser "example"
          >> ppIndent optDeclSig
          >> declVal
        ```

    8. `«inductive»`：归纳类型，包括可以选择的枚举类型与可以包含自身实例的递归类型

        ```lean
        def ctor := leading_parser atomic (optional docComment >> "\n| ")
          >> ppGroup (declModifiers true >> rawIdent >> optDeclSig)

        def computedField := leading_parser declModifiers true
          >> ident
          >> " : "
          >> termParser
          >> Term.matchAlts
        def computedFields := leading_parser "with"
          >> manyIndent (ppLine >> ppGroup computedField)

        def «inductive» := leading_parser "inductive "
          >> recover declId skipUntilWsOrDelim
          >> ppIndent optDeclSig
          >> optional (symbol " :=" <|> " where")
          >> many ctor
          >> optional (ppDedent ppLine >> computedFields)
          >> optDeriving
        ```

        1. `ctor`：若干个构造子，其名称置于与类型同名的命名空间中
        2. 构造子的参数不能是一个将正在定义的数据类型

        !!! note "构造子简化"
            当归纳类型可以被推断时，构造子命名空间可以省略，但需要保留点号

            ```lean
            @[builtin_term_parser]
            def dotIdent := leading_parser "."
              >> checkNoWsBefore
              >> rawIdent
            ```

    1.  `classInductive`：归纳类型类

        ```lean
        def classInductive := leading_parser atomic (group (symbol "class " >> "inductive "))
          >> recover declId skipUntilWsOrDelim
          >> ppIndent optDeclSig
          >> optional (symbol " :=" <|> " where")
          >> many ctor
          >> optDeriving
        ```

    2.  `«structure»`：定义结构体与类型类，本质是只有一个分支的归纳类型

        ```lean
        def structureTk := leading_parser "structure "
        def classTk := leading_parser "class "

        def «extends» := leading_parser " extends " >> sepBy1 termParser ", "
        def structCtor := leading_parser atomic (ppIndent (declModifiers true >> ident >> " :: "))

        def structExplicitBinder := leading_parser atomic (declModifiers true >> "(")
          >> withoutPosition (many1 ident
            >> ppIndent optDeclSig
            >> optional (Term.binderTactic <|> Term.binderDefault)
          )
          >> ")"
        def structImplicitBinder := leading_parser atomic (declModifiers true >> "{")
          >> withoutPosition (many1 ident >> declSig)
          >> "}"
        def structInstBinder := leading_parser atomic (declModifiers true >> "[")
          >> withoutPosition (many1 ident >> declSig)
          >> "]"
        def structSimpleBinder := leading_parser atomic (declModifiers true >> ident)
          >> optDeclSig
          >> optional (Term.binderTactic <|> Term.binderDefault)

        def structFields := leading_parser manyIndent
          <| ppLine
            >> checkColGe
            >> ppGroup (structExplicitBinder
              <|> structImplicitBinder
              <|> structInstBinder
              <|> structSimpleBinder
            )

        def «structure» := leading_parser (structureTk <|> classTk)
          >> declId
          >> ppIndent (many (ppSpace >> Term.bracketedBinder)
            >> optional «extends»
            >> Term.optType
          )
          >> optional ((symbol " := " <|> " where ")
            >> optional structCtor
            >> structFields
          )
          >> optDeriving
        ```

        1. `«extends»`：结构体继承，实质上创建了 `to` 前缀的字段
            1. `structInst` 可以使用被继承结构的字段初始化
            2. 扩展字段记号为被继承结构的字段提供了额外支持
            3. 指定多重继承时，仅创建第一条到父结构体的 `to` 前缀字段，余下字段直接复制，其他 `to` 前缀函数自动生成

            ```lean
            structure Person where
              name : String
              age : Nat

            structure Student extends Person where
              score : Int

            structure Staff extends Person where
              salary : Float

            structure Intern extends Student, Staff where

            def alice : Student := { name := "Alice", age := 14, score := 100 }
            def aisling : Intern := {
              toStudent := ⟨⟨"Aisling", 16⟩, -100⟩,
              salary := 1000
            }

            #check Student.toPerson   -- Student.toPerson (self : Student) : Person
            #check Intern.toStudent   -- Intern.toStudent (self : Intern) : Student
            #check Intern.toStaff     -- Intern.toStaff (self : Intern) : Staff

            #check alice.toPerson     -- alice.toPerson : Person
            #check alice.name         -- alice.name : String

            #check aisling.toStudent  -- aisling.toStudent : Student
            #check aisling.toStaff    -- aisling.toStaff : Staff
            #check aisling.toPerson   -- aisling.toPerson : Person
            #check aisling.name       -- aisling.name : String

            -- application type mismatch
            --   alice.name
            -- argument
            --   alice
            -- has type
            --   Student : Type
            -- but is expected to have type
            --   Person : Type
            #check Person.name alice

            -- unknown constant 'Intern.toPerson'
            #check Intern.toPerson
            ```

        2. `structCtor`：结构体构造子，结构 `S` 的默认构造子名称为 `S.mk`
            1. 构造子是一个接受所有字段作为输入值的函数，其名称置于与类型同名的命名空间中
            2. 可通过在 `:=` 或 `where` 后、所有字段前添加 `name ::` 以修改默认构造子名称为 `name`
        3. 访问器：结构体的每个字段定义了相应的访问器函数，其在结构体的命名空间中与字段具有相同名称

        !!! note "特殊结构体构造子"

            1. `structInst`：形如 `{ x := e, ... }`

                ```lean
                def structInstFieldAbbrev := leading_parser atomic (ident
                  >> notFollowedBy ("." <|> ":=" <|> symbol "[") "ERROR INFO"
                )
                def structInstField := ppGroup
                  $ leading_parser structInstLVal >> " := " >> termParser

                def optEllipsis := leading_parser optional " .."

                @[builtin_term_parser]
                def structInst := leading_parser "{ "
                >> withoutPosition (optional (atomic (sepBy1 termParser ", " >> " with "))
                  >> (sepByIndent
                    (structInstFieldAbbrev <|> structInstField)
                    ", "
                    (allowTrailingSep := true)
                  )
                  >> optEllipsis
                  >> optional (" : " >> termParser))
                >> " }"
                ```

                1. 若 `e` 与 `x` 同名，则 `:= e` 可被省略
                2. 若结构体元素预期类型无法被自动推断，可通过 `:` 在大括号内指定类型（在大括号外指定类型的行为是 `typeAscription`）
                3. 若已存在结构体元素 `legacy`，则可通过 `with` 创建一个部分不同的新元素，例如 `{ legacy with x := e }`

            2. `anonymousCtor`：匿名构造子，形如 `⟨e, ...⟩`

                ```lean
                @[builtin_term_parser]
                def anonymousCtor := leading_parser "⟨"
                  >> withoutPosition (withoutForbidden
                    (sepBy termParser ", " (allowTrailingSep := true))
                  )
                  >> "⟩"
                ```

                1. 相当于 `c e ...`，其中预期类型是具有单个构造子 `c` 的归纳类型
                2. 如果参数超过两个，则余下参数变为新匿名构造子应用，例如 `⟨a, b, c⟩ : α × (β × γ)` 等价于 `⟨a, ⟨b, c⟩⟩`

            3. `tuple`：有序对构造子，形如 `(e, ...)`

                ```lean
                @[builtin_term_parser]
                def tuple := leading_parser "("
                  >> optional (withoutPosition (withoutForbidden (termParser
                    >> ", "
                    >> sepBy1 termParser ", " (allowTrailingSep := true)
                  )))
                  >> ")"
                ```

                1. `()` 是 `Unit.unit` 的简写
                2. `(a b)` 是 `Prod.mk a b` 的简写
                3. `(a, b, c)` 是 `(a, (b, c))` 的简写，以此类推

3. `declModifiers`：声明修饰符

    ```lean
    def declModifiers (inline : Bool) := leading_parser optional docComment
      >> optional (Term.«attributes» >> if inline then skip else ppDedent ppLine)
      >> optional visibility
      >> optional «noncomputable»
      >> optional «unsafe»
      >> optional («partial» <|> «nonrec»)
    ```

    1. `docComment`：文档注释，不可单独使用

        ```lean
        def docComment := leading_parser ppDedent $ "/--"
          >> ppSpace
          >> commentBody
          >> ppLine
        ```

        1. `commentBody` 中对 `-/` 进行检测
        2. 文档注释会被解析并保存到句法树中，可通过 `TSyntax.getDocString` 获得注释文本

    2. `attributes`：属性，即与对象相关联的标签

        ```lean
        def «scoped» := leading_parser "scoped "
        def «local» := leading_parser "local "
        def attrKind := leading_parser optional («scoped» <|> «local»)

        def attrInstance := ppGroup $ leading_parser attrKind
          >> attrParser

        def attributes := leading_parser "@["
          >> withoutPosition (sepBy1 attrInstance ", ")
          >> "] "
        ```

    3. `visibility`：修改定义在命名空间外的可见性，本质是阻止 Lean 创建较短的别名

        ```lean
        def «private» := leading_parser "private "
        def «protected» := leading_parser "protected "

        def visibility := «private» <|> «protected»
        ```

    4. `«noncomputable»`：不可计算函数

        ```lean
        def «noncomputable» := leading_parser "noncomputable "
        ```

    5. `«unsafe»`：使用了不安全特性的函数．普通函数不能直接调用 `unsafe` 函数

        ```lean
        def «unsafe» := leading_parser "unsafe "
        ```

    6. `«partial»`：非全函数，即不一定停机的函数

        ```lean
        def «partial» := leading_parser "partial "
        ```

4. 变量声明
    1. `«universe»`：宇宙变量

        ```lean
        @[builtin_command_parser]
        def «universe» := leading_parser "universe"
          >> many1 (ppSpace >> checkColGt >> ident)
        ```

    2. `«variable»`：函数变量，指示 Lean 将声明的变量作为绑定变量插入定义中

        ```lean
        @[builtin_command_parser]
        def «variable» := leading_parser "variable"
          >> many1 (ppSpace >> checkColGt >> Term.bracketedBinder)
        ```

5. 补充定义
    1. `«attribute»`：为定义指定属性

        ```lean
        def eraseAttr := leading_parser "-" >> rawIdent

        @[builtin_command_parser]
        def «attribute» := leading_parser "attribute "
          >> "["
          >> withoutPosition (sepBy1 (eraseAttr <|> Term.attrInstance) ", ")
          >> "]"
          >> many1 (ppSpace >> ident)
        ```

    2. `«deriving»`：为类型定义派生实例

        ```lean
        @[builtin_command_parser]
        def «deriving» := leading_parser "deriving "
          >> "instance "
          >> derivingClasses
          >> " for "
          >> sepBy1 (recover ident skip) ", "
        ```

### 2.1.2 组织特性
1. `namespace` 与 `section`

    1. `namespace`：将一系列声明放在命名空间

        ```lean
        @[builtin_command_parser]
        def «namespace» := leading_parser "namespace "
          >> checkColGt
          >> ident
        ```

        1. Lean 中的每个名称都位于一个命名空间，且多层命名空间可被直接定义
        2. 命名空间名称仅用作前缀，不假设本身是否被定义
        3. `_root_` 是系统保留命名空间，用于显式指明空前缀

    2. `«section»`：小节，限制 `variable` 的作用范围

        ```lean
        @[builtin_command_parser]
        def «section» := leading_parser "section"
          >> optional (ppSpace >> checkColGt >> ident)
        ```

        1. `variable` 命令指示 Lean 将声明的变量作为绑定变量插入定义中
        2. 匿名 `section` 可不提供标识符

    3. `«end»`：封闭 `namespace` 与 `section`

        ```lean
        @[builtin_command_parser]
        def «end» := leading_parser "end"
          >> optional (ppSpace >> checkColGt >> ident)
        ```

    4. `«set_option»`：改变 Lean 行为，生效范围限制在命名空间、小节或文件内

        ```lean
        def optionValue := nonReservedSymbol "true"
          <|> nonReservedSymbol "false"
          <|> strLit
          <|> numLit

        @[builtin_command_parser]
        def «set_option» := leading_parser "set_option "
          >> identWithPartialTrailingDot
          >> ppSpace
          >> optionValue
        ```

2. `«open»` 与 `«export»`
    1. `«open»`：在不显式指定的情况下使用对应命名空间内的名称，本质为常量创建了别名

        ```lean
        def openHiding := leading_parser ppSpace
          >> atomic (ident >> " hiding")
          >> many1 (ppSpace >> checkColGt >> ident)
        def openRenamingItem := leading_parser ident
          >> unicodeSymbol " → " " -> "
          >> checkColGt
          >> ident
        def openRenaming := leading_parser ppSpace
          >> atomic (ident >> " renaming ")
          >> sepBy1 openRenamingItem ", "
        def openOnly := leading_parser ppSpace
          >> atomic (ident >> " (") >> many1 ident >> ")"
        def openSimple := leading_parser many1 (ppSpace >> checkColGt >> ident)
        def openScoped := leading_parser " scoped"
          >> many1 (ppSpace >> checkColGt >> ident)

        def openDecl := withAntiquot (mkAntiquot
          "openDecl"
          `Lean.Parser.Command.openDecl
          (isPseudoKind := true)
        )
          <| openHiding
            <|> openRenaming
            <|> openOnly
            <|> openSimple
            <|> openScoped

        @[builtin_command_parser]
        def «open» := leading_parser withPosition ("open" >> openDecl)
        ```

        1. `openHiding`：打开命名空间，除了指定名称
        2. `openRenaming`：仅打开命名空间内的特定名称，并为指定名称重命名
        3. `openOnly`：仅打开命名空间内的特定名称
        4. `openSimple`：打开命名空间

    2. `export Some.Namespace (name₁ name₂)` 使得 `name₁` 与 `name₂`
        1. 在当前命名空间无需前缀 `Some.Namespace` 即可访问
        2. 在 `export` 所在命名空间 `N` 之外以 `N.name₁` 与 `N.name₂` 形式访问

        ```lean
        @[builtin_command_parser]
        def «export» := leading_parser "export "
          >> ident
          >> " ("
          >> many1 ident
          >> ")"
        ```

3. `«mutual»`：包围互相调用的代码

    ```lean
    @[builtin_command_parser]
    def «mutual» := leading_parser "mutual"
      >> many1 (ppLine >> notSymbol "end" >> commandParser)
      >> ppDedent (ppLine >> "end")
    ```

### 2.1.3 句法解析
1. `«syntax»`：句法解析

    ```lean
    def namedName := leading_parser atomic (" (" >> nonReservedSymbol "name")
      >> " := "
      >> ident
      >> ")"
    def optNamedName := optional namedName
    def optKind : Parser := optional (" (" >> nonReservedSymbol "kind" >> ":=" >> ident >> ")")

    @[builtin_command_parser]
    def «syntax» := leading_parser optional docComment
      >> optional Term.«attributes»
      >> Term.attrKind
      >> "syntax "
      >> optPrecedence
      >> optNamedName
      >> optNamedPrio
      >> many1 (ppSpace >> syntaxParser argPrec)
      >> " : "
      >> ident
    ```

2. 句法解析相关的语法糖
    1. `«macro_rules»`：相当于 `@[macro ...] def ...`

        ```lean
        @[builtin_command_parser]
        def «macro_rules» := suppressInsideQuot <| leading_parser optional docComment
          >> optional Term.«attributes»
          >> Term.attrKind
          >> "macro_rules"
          >> optKind
          >> Term.matchAlts
        ```

    2. `«elab_rules»`：相当于 `@[command_elab ...] def ...`

        ```lean
        @[builtin_command_parser]
        def «elab_rules» := leading_parser suppressInsideQuot <| optional docComment
          >> optional Term.«attributes»
          >> Term.attrKind
          >> "elab_rules"
          >> optKind
          >> optional (" : " >> ident)
          >> optional (" <= " >> ident)
          >> Term.matchAlts
        ```

    3. `«macro»`：相当于 `syntax` 与 `macro`

        ```lean
        def macroArg := leading_parser optional (atomic (ident
          >> checkNoWsBefore "no space before ':'"
          >> ":"
        ))
          >> syntaxParser argPrec

        def macroRhs : Parser := leading_parser withPosition termParser
        def macroTail := leading_parser atomic (" : " >> ident)
          >> darrow
          >> macroRhs

        @[builtin_command_parser]
        def «macro» := leading_parser suppressInsideQuot <| optional docComment
          >> optional Term.«attributes»
          >> Term.attrKind
          >> "macro"
          >> optPrecedence
          >> optNamedName
          >> optNamedPrio
          >> many1 (ppSpace >> macroArg)
          >> macroTail
        ```

        1. `«notation»`

            ```lean
            def notationItem := ppSpace
              >> withAntiquot (mkAntiquot "notationItem" decl_name%) (strLit <|> identPrec)

            @[builtin_command_parser]
            def «notation» := leading_parser optional docComment
              >> optional Term.«attributes»
              >> Term.attrKind
              >> "notation"
              >> optPrecedence
              >> optNamedName
              >> optNamedPrio
              >> many notationItem
              >> darrow
              >> termParser
            ```

        2. `«mixfix»`

            ```lean
            def «prefix» := leading_parser "prefix"
            def «infix» := leading_parser "infix"
            def «infixl» := leading_parser "infixl"
            def «infixr» := leading_parser "infixr"
            def «postfix» := leading_parser "postfix"
            def mixfixKind := «prefix» <|> «infix» <|> «infixl» <|> «infixr» <|> «postfix»

            @[builtin_command_parser]
            def «mixfix» := leading_parser optional docComment
              >> optional Term.«attributes»
              >> Term.attrKind
              >> mixfixKind
              >> precedence
              >> optNamedName
              >> optNamedPrio
              >> ppSpace
              >> strLit
              >> darrow
              >> termParser
            ```

    4. `«elab»`：相当于 `syntax` 与 `elab`

        ```lean
        def elabArg  := macroArg
        def elabTail := leading_parser atomic (" : " >> ident >> optional (" <= " >> ident))
          >> darrow
          >> withPosition termParser

        @[builtin_command_parser]
        def «elab» := leading_parser suppressInsideQuot <| optional docComment
          >> optional Term.«attributes»
          >> Term.attrKind
          >> "elab"
          >> optPrecedence
          >> optNamedName
          >> optNamedPrio
          >> many1 (ppSpace >> elabArg)
          >> elabTail
        ```

### 2.1.4 辅助指令
1. `eval`：使用快速字节码求值器对项进行求值

    ```lean
    @[builtin_command_parser]
    def eval := leading_parser "#eval "
      >> termParser
    ```

2. `#reduce`：使用内核类型检查程序对项进行归约，直到无法再进行归约

    ```lean
    @[builtin_command_parser]
    def reduce := leading_parser "#reduce "
      >> termParser
    ```

3. `check`：仅检查项的类型而不求值

    ```lean
    @[builtin_command_parser]
    def check := leading_parser "#check "
      >> termParser
    ```

4. `print`：揭示数据类型和定义的内部结构

    ```lean
    @[builtin_command_parser]
    def print := leading_parser "#print "
      >> (ident <|> strLit)
    ```

    1. `printAxioms`：列出依赖公理

        ```lean
        @[builtin_command_parser]
        def printAxioms := leading_parser "#print "
          >> nonReservedSymbol "axioms "
          >> ident
        ```

    2. `printEqns`：列出等式

        ```lean
        @[builtin_command_parser]
        def printEqns := leading_parser "#print "
          >> (nonReservedSymbol "equations " <|> nonReservedSymbol "eqns ")
          >> ident
        ```

### 2.1.5 特殊指令
1. `«init_quot»`：定义类型 `α` 上的二元关系 `r` 形成的商 `Quot r`

    ```lean
    @[builtin_command_parser]
    def «init_quot» := leading_parser "init_quot"
    ```

    增加四个定义

    ```lean
    opaque Quot {α : Sort u} (r : α → α → Prop) : Sort u
    opaque Quot.mk {α : Sort u} (r : α → α → Prop) (a : α) : Quot r

    opaque Quot.ind {α : Sort u} {r : α → α → Prop} {β : Quot r → Prop} :
      (∀ a : α, β (Quot.mk r a)) → ∀ q : Quot r, β q

    opaque Quot.lift {α : Sort u} {r : α → α → Prop} {β : Sort v} (f : α → β) :
      (∀ a b : α, r a b → Eq (f a) (f b)) → Quot r → β
    ```

    1. `Quot.mk`：将类型 `α` 映射到商 `@Quot α r`
    2. `Quit.ind`：设 `β` 是 `Quot r` 上的谓词，且对任意 `Quot.mk a : Quot r` 成立，则 `β` 对任意 `q : Quot r` 成立
    3. `Quot.lift`：设函数 `f : α → β` 有 `r a b` 蕴含 `f a = f b`，则可从 `f` 导出函数 `f': Quot r → β`

2. `addDocString`：将文档注释添加到现有声明，替换既存文档注释

    ```lean
    @[builtin_command_parser]
    def addDocString := leading_parser docComment
      >> "add_decl_doc "
      >> ident
    ```

## 2.2 项范畴
### 2.3.1 宇宙与类型
1. `Type`、`Sort` 与 `Prop`：类型、分类与命题

    ```lean
    @[builtin_term_parser]
    def type := leading_parser "Type"
      >> optional (checkWsBefore ""
        >> checkPrec leadPrec
        >> checkColGt
        >> levelParser maxPrec
      )

    @[builtin_term_parser]
    def sort := leading_parser "Sort"
      >> optional (checkWsBefore ""
        >> checkPrec leadPrec
        >> checkColGt
        >> levelParser maxPrec
      )

    @[builtin_term_parser]
    def prop := leading_parser "Prop"
    ```

    1. 宇宙层级
        1. `Prop` 即 `Sort 0` 或 `Sort`；`Type 0` 或 `Type` 即 `Sort 1`；`Type n` 即 `Sort (n + 1)`
        2. `Sort n` 的类型是 `Type n`；`Type n` 的类型是 `Type (n + 1)`
        3. 函数类型占据可同时包含参数类型和返回类型的最小宇宙，除非函数返回 `Prop`（此时函数类型也为 `Prop`）

        <div class="text-table">

        |   分类   |   类型   |  命题  |
        | :------: | :------: | :----: |
        | `Sort 0` |    —     | `Prop` |
        | `Sort 1` | `Type 0` |   —    |
        | `Sort 2` | `Type 1` |   —    |

        </div>

    2. `explicitUniv`：显式标识层级

        ```lean
        @[builtin_term_parser]
        def explicitUniv : TrailingParser := trailing_parser checkStackTop isIdent "ERROR INFO"
          >> checkNoWsBefore "ERROR INFO"
          >> ".{"
          >> sepBy1 levelParser ", "
          >> "}"
        ```

2. 函数类型表达式
    1. `arrow`：箭头表达式，右结合

        ```lean
        @[builtin_term_parser]
        def arrow := trailing_parser checkPrec 25
          >> unicodeSymbol " → " " -> "
          >> termParser 25
        ```

    2. `depArrow` 与 `«forall»`：依值箭头表达式与任意符号，左结合

        ```lean
        @[builtin_term_parser]
        def depArrow := leading_parser:25 bracketedBinder true
          >> unicodeSymbol " → " " -> "
          >> termParser

        @[builtin_term_parser]
        def «forall» := leading_parser:leadPrec unicodeSymbol "∀" "forall"
          >> many1 (ppSpace >> (binderIdent <|> bracketedBinder))
          >> optType
          >> ", "
          >> termParser
        ```

3. 类型归属与类型（命题）标注
    1. `typeAscription`：类型归属记号，指示 Lean 将表达式解释为指定类型

        ```lean
        def typeAscription := leading_parser "("
          >> (withoutPosition (withoutForbidden
            (termParser >> " :" >> optional (ppSpace >> termParser))
          ))
          >> ")"
        ```

    2. `typeSpec` 与 `optType`：通用（可选）类型标注

        ```lean
        def typeSpec := leading_parser " : " >> termParser
        def optType : Parser := optional typeSpec
        ```

        !!! note "项与类型的关系"
            1. 每个项都有对应类型，因此冒号右侧的项必然存在
            2. 并非所有项都是类型，例如下述声明不合法：

                ```lean
                class Plus (α : Type) where
                  plus : α → α → α

                variable (x : Plus Nat)  # ⊢ Type
                variable (x : Plus)      # Error: type expected, got (Plus : Type → Type)
                ```

    3. `«show»`：命题标注

        ```lean
        def byTactic' := leading_parser "by "
          >> Tactic.tacticSeqIndentGt

        def fromTerm   := leading_parser "from "
          >> termParser

        def showRhs := fromTerm <|> byTactic'
        @[builtin_term_parser]
        def «show» := leading_parser:leadPrec "show "
          >> termParser
          >> ppSpace
          >> showRhs
        ```

        !!! note "倒推"
            从目标向后推理的结构化方法，将原证明目标转移到假设

            ```lean
            def sufficesDecl := leading_parser (atomic (group (binderIdent >> " : ")) <|> hygieneInfo)
              >> termParser
              >> ppSpace
              >> showRhs
            ```

### 2.3.2 函数与应用
1. `bracketedBinder`：括号绑定器

    ```lean
    def binderType (requireType := false) : Parser := if requireType
      then node nullKind (" : " >> termParser)
      else optional (" : " >> termParser)
    def binderTactic := leading_parser atomic (symbol " := " >> " by ")
      >> Tactic.tacticSeq
    def binderDefault := leading_parser " := "
      >> termParser

    def bracketedBinder (requireType := false) := withAntiquot (mkAntiquot
      "bracketedBinder"
      decl_name%
      (isPseudoKind := true)
    )
      <| explicitBinder requireType
        <|> strictImplicitBinder requireType
        <|> implicitBinder requireType
        <|> instBinder

    @[builtin_term_parser]
    def explicit := leading_parser "@"
      >> termParser maxPrec
    ```

    1. `explicitBinder`：显式绑定器，形如 `(x y : A)` 或 `(x y)`，可通过 `(x : A := v)` 或 `(x : A := by tac)` 指定默认值

        ```lean
        def explicitBinder (requireType := false) := leading_parser ppGroup <| "("
          >> withoutPosition (many1 binderIdent
            >> binderType requireType
            >> optional (binderTactic <|> binderDefault)
          )
          >> ")"
        ```

    2. `implicitBinder`：隐式绑定器，形如 `{x y : A}` 或 `{x y}`

        ```lean
        def implicitBinder (requireType := false) := leading_parser ppGroup <| "{"
          >> withoutPosition (many1 binderIdent >> binderType requireType)
          >> "}"
        ```

        1. 通常模式下，隐式绑定器应能被自主推断，Lean 会自动为该参数填充占位符 `_`
        2. 在 `@` 显式模式下，隐式绑定器与显式绑定器表现相一致

    3. `strictImplicitBinder`：严格隐式绑定器，形如 `⦃x y : A⦄`、`{{x y : A}}`、`⦃x y⦄` 或 `{{x y}}`

        ```lean
        def strictImplicitLeftBracket := atomic (group (symbol "{" >> "{")) <|> "⦃"
        def strictImplicitRightBracket := atomic (group (symbol "}" >> "}")) <|> "⦄"

        def strictImplicitBinder (requireType := false) := leading_parser ppGroup
          <| strictImplicitLeftBracket
            >> many1 binderIdent
            >> binderType requireType
            >> strictImplicitRightBracket
        ```

        1. 除非指定了至少一个后续显式参数，严格隐式绑定器不会自动插入占位符 `_`
        2. 假设遵循上述规则，严格隐式绑定器与隐式绑定器表现相一致

    4. `instBinder`：实例绑定器，形如 `[C]` 或 `[inst : C]`．Lean 通过归一化找到唯一能通过类型检查的参数值

        ```lean
        def optIdent : Parser := optional (atomic (ident >> " : "))

        def instBinder := leading_parser ppGroup <| "["
          >> withoutPosition (optIdent >> termParser)
          >> "]"
        ```

        1. 单个实例绑定器不可同时指定多个变量
        2. 通常模式下，Lean 自动进行类型类推断并插入 `C` 的实例
        3. 在 `@` 显式模式下，如果 `_` 被用于实例隐式参数，则仍可实行类型类推断；也可通过 `(_)` 禁用该特性

2. `«fun»`：$\lambda$ 表达式，即匿名函数．变量名部分支持单项模式匹配

    ```lean
    def funStrictImplicitBinder := atomic (lookahead (strictImplicitLeftBracket
      >> many1 binderIdent
      >> (symbol " : " <|> strictImplicitRightBracket)
    ))
      >> strictImplicitBinder
    def funImplicitBinder := withAntiquot (mkAntiquot "implicitBinder" ``implicitBinder)
      <| atomic (lookahead ("{" >> many1 binderIdent >> (symbol " : " <|> "}")))
        >> implicitBinder

    def funBinder : Parser := withAntiquot (mkAntiquot "funBinder" decl_name% (isPseudoKind := true))
      <| funStrictImplicitBinder
        <|> funImplicitBinder
        <|> instBinder
        <|> termParser maxPrec

    def basicFun : Parser := leading_parser ppGroup (many1 (ppSpace >> funBinder)
      >> optType
      >> unicodeSymbol " ↦" " =>")
      >> ppSpace
      >> termParser

    @[builtin_term_parser]
    def «fun» := leading_parser:maxPrec ppAllowUngrouped
      >> unicodeSymbol "λ" "fun"
      >> (basicFun <|> matchAlts)
    ```

    !!! note "括号函数"
        `·` 将最靠近的一对括号创建为函数

        1. 用 `·` 表示参数，括号内的表达式表示函数体
        2. `paren` 也是普通括号的句法

        ```lean
        @[builtin_term_parser]
        def paren := leading_parser "("
          >> withoutPosition (withoutForbidden (ppDedentIfGrouped termParser))
          >> ")"
        ```

3. 应用：左结合，可使用 `<|` 改变结合顺序

    ```lean
    def namedArgument := leading_parser atomic ("(" >> ident >> " := ")
      >> withoutPosition termParser
      >> ")"
    def ellipsis := leading_parser ".."
      >> notFollowedBy "." "`.` immediately after `..`"
    def argument := checkWsBefore "expected space"
      >> checkColGt "expected to be indented"
      >> (namedArgument <|> ellipsis <|> termParser argPrec)

    @[builtin_term_parser]
    def app := trailing_parser:leadPrec:maxPrec many1 argument
    ```

    1. `namedArgument`：命名参数，形如 `(field := value)`
    2. `ellipsis`：提供缺少的显式参数作为占位符
    3. `termParser`：直接传入一个普通项

4. 扩展字段记号：若 `e : T`，则可将 `T.f e` 简记为 `e.f`，`f` 可以是索引或标识符．也称作投影记号

    ```lean
    @[builtin_term_parser]
    def proj := trailing_parser checkNoWsBefore
      >> "."
      >> checkNoWsBefore
      >> (fieldIdx <|> rawIdent)
    ```

    1. 若 `e : T` 且存在 `T.f` 的声明，则 `e.f` 等价于 `T.f (p := e)`，其中 `p` 是第一个类型为 `T` 的显式参数
    2. 若 `T` 是一个结构体类型且 `f : F` 是 `T` 的一个字段，则 `T.f` 是一个类型为 `T → F` 的函数，于是 `T.f e` 可简写为 `e.f`
    3. 若 `T` 是一个结构体类型且 `i` 是一个正数，则 `e.i` 是 `e` 的第 `i` 个字段之简写

### 2.3.3 标识符与字面值
1. 标识符与占位符

    ```lean
    @[builtin_term_parser]
    def ident := checkPrec maxPrec >> Parser.ident

    @[builtin_term_parser]
    def hole := leading_parser "_"
    @[builtin_term_parser]
    def «sorry» := leading_parser "sorry"

    @[builtin_term_parser]
    def syntheticHole := leading_parser "?" >> (ident <|> hole)
    def binderIdent : Parser := ident <|> hole
    ```

    1. `hole`：占位符，指示 Lean 自动填充
    2. `«sorry»`：生成任何证明或对象，可用于增量性地构建长证明

2. 字面值：包括整数、浮点数、字符串、字符与名称

    ```lean
    @[builtin_term_parser]
    def num : Parser := checkPrec maxPrec >> numLit
    @[builtin_term_parser]
    def scientific : Parser := checkPrec maxPrec >> scientificLit
    @[builtin_term_parser]
    def str : Parser := checkPrec maxPrec >> strLit
    @[builtin_term_parser]
    def char : Parser := checkPrec maxPrec >> charLit
    @[builtin_term_parser]
    def quotedName := leading_parser nameLit
    ```

    1. `doubleQuotedName`：表示 `Name` 元素，但会请求 Lean 静态检查名称是否位于声明范围内

        ```lean
        @[builtin_term_parser]
        def doubleQuotedName := leading_parser "`"
          >> checkNoWsBefore
          >> rawCh '`' (trailingWs := false)
          >> ident
        ```

    2. `quot` 与 `precheckedQuot`：（一系列）命令的句法引用，使用 `:` 指定句法成分种类

        ```lean
        @[builtin_term_parser low]
        def quot := leading_parser "`("
          >> withoutPosition (incQuotDepth (many1Unbox commandParser))
          >> ")"

        @[builtin_term_parser]
        def precheckedQuot := leading_parser "`"
          >> quot
        ```

### 2.3.4 局部定义
1. `«let»`：局部定义可用的表达式（称为主体）必须在新行上，且列数不大于 `let` 关键字的所在列

    ```lean
    def letIdBinder := withAntiquot (mkAntiquot "letIdBinder" decl_name% (isPseudoKind := true))
      <| binderIdent <|> bracketedBinder
    def letIdLhs : Parser := binderIdent
      >> notFollowedBy (checkNoWsBefore "" >> "[") "ERROR INFO"
      >> many (ppSpace >> letIdBinder)
      >> optType

    def letIdDecl := leading_parser atomic (letIdLhs >> " := ")
      >> termParser
    def letPatDecl := leading_parser atomic (termParser >> pushNone >> optType >> " := ")
      >> termParser
    def letEqnsDecl := leading_parser letIdLhs
      >> (" := " <|> matchAlts)

    def letDecl := leading_parser notFollowedBy (nonReservedSymbol "rec") "rec"
      >> (letIdDecl <|> letPatDecl <|> letEqnsDecl)
    @[builtin_term_parser]
    def «let» := leading_parser:leadPrec withPosition ("let " >> letDecl)
      >> optSemicolon termParser
    ```

    1. `letIdDecl`：形如 `let x := e`
    2. `letPatDecl`：形如 `let pat := e`，相当于只有一项的模式匹配
    3. `letEqnsDecl`：形如 `let f | pat1 => e1 | pat2 => e2 ...`

2. `«letrec»`：递归 `let` 定义必须通过编写 `let rec` 明确表示

    ```lean
    def letRecDecl := leading_parser optional Command.docComment
      >> optional «attributes»
      >> letDecl
      >> Termination.suffix
    def letRecDecls := leading_parser sepBy1 letRecDecl ", "

    @[builtin_term_parser]
    def «letrec» := leading_parser:leadPrec withPosition (group
      ("let " >> nonReservedSymbol "rec ") >> letRecDecls
    )
      >> optSemicolon termParser
    ```

3. `«have»`：形如 `have := e`、`have f x1 x2 := e`、`have pat := e` 或 `have f | pat1 => e1 | pat2 => e2 ...`

    ```lean
    def haveId := leading_parser (withAnonymousAntiquot := false) (ppSpace >> binderIdent)
      <|> hygieneInfo
    def haveIdLhs := haveId
      >> many (ppSpace >> letIdBinder)
      >> optType

    def haveIdDecl := leading_parser (withAnonymousAntiquot := false) atomic (haveIdLhs >> " := ")
      >> termParser
    def haveEqnsDecl := leading_parser (withAnonymousAntiquot := false) haveIdLhs
      >> matchAlts

    def haveDecl := leading_parser (withAnonymousAntiquot := false) haveIdDecl
      <|> (ppSpace >> letPatDecl)
      <|> haveEqnsDecl
    @[builtin_term_parser]
    def «have» := leading_parser:leadPrec withPosition ("have" >> haveDecl)
      >> optSemicolon termParser
    ```

    当使用匿名 `have` 时，可用 `this` 指代最新的表达式

4. 单句命令
    1. `«open»`：作用于单独语句的 `open`

        ```lean
        @[builtin_term_parser]
        def «open» := leading_parser:leadPrec "open"
            >> Command.openDecl
            >> withOpenDecl (" in " >> termParser)
        ```

    2. `«set_option»`：作用于单独语句的 `set_option`

        ```lean
        @[builtin_term_parser]
        def «set_option» := leading_parser:leadPrec "set_option "
          >> identWithPartialTrailingDot
          >> ppSpace
          >> Command.optionValue
          >> " in "
          >> termParser
        ```

### 2.3.5 其他记号
1. `«match»`：模式匹配，形如 `match e, ... with | p, ... => f | ...`，分支条件可以重叠（使用第一个匹配项），不可遗漏

    ```lean
    def trueVal := leading_parser nonReservedSymbol "true"
    def falseVal := leading_parser nonReservedSymbol "false"
    def generalizingParam := leading_parser atomic ("(" >> nonReservedSymbol "generalizing")
      >> " := "
      >> (trueVal <|> falseVal)  >> ")"
      >> ppSpace

    def motive := leading_parser atomic ("(" >> nonReservedSymbol "motive" >> " := ")
      >> withoutPosition termParser
      >> ")"
      >> ppSpace

    def matchDiscr := leading_parser optional (atomic (ident >> " : "))
      >> termParser

    def darrow : Parser := " => "
    def matchAlt (rhsParser : Parser := termParser) : Parser :=
      leading_parser "| "
        >> ppIndent (sepBy1 (sepBy1 termParser ", ") " | "
          >> darrow
          >> checkColGe "ERROR INFO"
          >> rhsParser
        )
    def matchAlts (rhsParser : Parser := termParser) : Parser :=
      leading_parser withPosition $ many1Indent (ppLine >> matchAlt rhsParser)

    @[builtin_term_parser]
    def «match» := leading_parser:leadPrec "match "
      >> optional generalizingParam
      >> optional motive
      >> sepBy1 matchDiscr ", "
      >> " with"
      >> ppDedent matchAlts
    ```

    1. `generalizingParam`：当不构建证明时，`match` 不会自动替换因变量类型中匹配的变量，可用 `match (generalizing := true)` 以强制执行此操作
    2. `matchDiscr`：形如 `h1 : e1, e2, h3 : e3, ...`
        1. 若以 `match h : e, ... with | p, ... => f | ...` 使用模式匹配，则在 `f` 中可用 ``h : e = p``
        2. `Syntax` 引用也可用于模式匹配，从而将 `Syntax` 值与引号、模式变量或占位符 `_` 进行匹配
    3. `matchAlts`
        1. 若以 `,` 分隔多个 `matchDiscr`，则 `matchAlts` 也应对应相同数量的参数
        2. 若以 `|` 分隔多个分支，则 `rhsParser` 的绑定变量必须对所有分支都有意义
        3. `match` 默认只匹配构造子组成的项，或可被归约到构造子应用、且标记了 `match_pattern` 属性的函数
        4. 若匹配项 `t` 含有不可被归约到构造子应用的项，则应使用 `.(t)` 表示其不可被访问

2. `«do»`：单子的简便记法

    ```lean
    def doSeqItem := leading_parser ppLine
      >> doElemParser
      >> optional "; "

    def doSeqIndent := leading_parser many1Indent doSeqItem
    def doSeqBracketed := leading_parser "{"
      >> withoutPosition (many1 doSeqItem)
      >> ppLine
      >> "}"

    def doSeq := withAntiquot (mkAntiquot "doSeq" decl_name% (isPseudoKind := true))
      <| doSeqBracketed <|> doSeqIndent

    @[builtin_term_parser]
    def «do» := leading_parser:argPrec ppAllowUngrouped
      >> "do "
      >> doSeq
    ```

    1. 对于 `do { E }`，直接译为 `E`
    2. 对于 `do { let x ← E₁; S; ...; Eₙ }`，译为 `E₁ >>= fun x => do { S; ...; Eₙ }`
    3. 对于 `do { E₁ S; ...; Eₙ }`，译为 `E₁ >>= fun () => do { S; ...; Eₙ }`
    4. 对于 `do { let x := E₁; S; ...; Eₙ }`，译为

        ```lean
        let x := E₁
        do { S; ...; Eₙ }
        ```

    !!! note "do 记号内的类型"
        忽略 `let x := E`．设 `S₁, S₂, ⋯, Sₙ` 为语句 `Eᵢ` 或 `let x ← Eᵢ`，`Eᵢ` 与 `E` 为表达式，则下述语句块

        ```lean
        do S₁
            S₂
            ...
            Sₙ
            E
        ```

        可译为

        ```lean
        E₁ >>= fun x₁ =>
          E₂ >>= fun x₂ =>
            ...
              Eₙ >>= fun xₙ =>
                E
        ```

        其中 `xᵢ` 是 `αᵢ` 元素或 `()` 的简记．设 `m` 为单子类型，`α₁, α₂, ⋯, αₙ, β` 为任意类型，则

        ```lean
        E₁ : m α₁
        E₂ : m α₂
        ...
        Eₙ : m αₙ
        E  : m β
        ```

        1. 当 `xᵢ` 为 `()` 时，`αᵢ` 必为 `Unit`
        2. 所有 `m` 必须相同，但 `α₁, α₂, ⋯, αₙ, β` 可各不相同
        3. 最终返回值类型为 `m β`

3. `byTactic`：证明策略，指示 Lean 如何构建证明

    ```lean
    def tacticSeq1Indented : Parser := leading_parser sepBy1IndentSemicolon tacticParser
    def tacticSeqBracketed : Parser := leading_parser "{"
      >> sepByIndentSemicolon tacticParser
      >> ppDedent (ppLine >> "}")

    def tacticSeq := leading_parser tacticSeqBracketed <|> tacticSeq1Indented
    def tacticSeqIndentGt := withAntiquot (mkAntiquot "tacticSeq" ``tacticSeq)
      <| node ``tacticSeq
      <| tacticSeqBracketed
        <|> (checkColGt "indented tactic sequence" >> tacticSeq1Indented)

    @[builtin_term_parser]
    def byTactic := leading_parser:leadPrec ppAllowUngrouped >> "by " >> Tactic.tacticSeqIndentGt
    def byTactic' := leading_parser "by " >> Tactic.tacticSeqIndentGt
    ```

4. `Termination.suffix`：停机性证明

    ```lean
    def terminationBy := leading_parser "termination_by "
      >> optional (atomic (many (ppSpace >> Term.binderIdent) >> " => "))
      >> termParser

    @[inherit_doc terminationBy]
    def terminationBy? := leading_parser "termination_by?"

    def decreasingBy := leading_parser ppDedent ppLine
      >> "decreasing_by "
      >> Tactic.tacticSeqIndentGt

    def Termination.suffix := leading_parser optional (ppDedent ppLine
      >> (terminationBy? <|> terminationBy)
    )
      >> optional decreasingBy
    ```

    1. `terminationBy`：提供停机参数，若要使用 `:` 后的匿名参数，可以匿名函数形式命名
    2. `terminationBy?`：建议自动推断的停机参数
    3. `decreasingBy`：手动证明终止参数，在每次递归调用时都会减少

## 2.3 属性范畴
1. 内建属性：先于 `Lean.Parser` 定义的属性
    1. 与句法范畴对应的属性
        1. `builtin_term_parser`：对应 `termParser`
        2. `builtin_command_parser`：对应 `commandParser`
        3. `builtin_attr_parser`：对应 `attrParser`
        4. `builtin_tactic_parser`：对应 `tacticParser`
        5. `builtin_syntax_parser`：对应 `syntaxParser`
        6. `builtin_level_parser`：对应 `levelParser`
        7. `builtin_prio_parser`：对应 `priorityParser`
        8. `builtin_prec_parser`：对应 `precedenceParser`
        9. `builtin_doElem_parser`：对应 `doElemParser`
    2. 与类型类对应的属性
        1. `instance`：标记类型类实例（定义可不使用 `instance`）
        2. `default_instance`：标记类型类默认实例
    3. 与可约性对应的属性
        1. `reducible`：可约声明，在任何地方展开．`abbrev` 应用的设置
        2. `semireducible`：部分可约声明，部分开销较高的自动化不展开．`def` 默认应用的设置
        3. `irreducible`：不可约声明，从不展开
    4. `inherit_doc`：从特定声明继承文档
2. 标签属性：在定义所在模块中标记声明
    1. `match_pattern`：标记可在模式识别中使用的定义
    2. `computed_field`：用于归纳类型的 `computedFields`
3. 参数属性：标签属性的变体，可以在其中将参数附加到属性
    1. `export`：将 Lean 定义导出为外部可调用符号
    2. `extern`：指定外部库函数作为定义实现，标记该属性的常量不可被用于证明 `False`
    3. `implemented_by`：指定 Lean 函数作为定义实现（可能为 `unsafe`）
4. 枚举属性：给定类型为 `α` 的列表 `[a₁, a₂, ..., aₙ]`，枚举属性提供属性 `Attrᵢ` 用于将值 `aᵢ` 与声明关联起来
    1. `inline`：标记定义为内联
    2. `noinline`：标记定义为非内联
    3. `macro_inline`：标记定义在 ANF 转换前内联
    4. `always_inline`：标记定义始终内联

    !!! note "其他属性"
        - `simp`：标记简化策略可用等式
        - `builtin_macro` 与 `macro`：定义宏
        - `builtin_command_elab` 与 `command_elab`：定义繁饰器

## 2.4 策略范畴
1. `«unknown»`：无法识别策略的回落机制

    ```lean
    @[builtin_tactic_parser]
    def «unknown» := leading_parser withPosition (ident >> errorAtSavedPos "ERROR INFO" true)
    ```

2. `«match»`：策略内模式匹配

    ```lean
    @[builtin_tactic_parser]
    def «match» := leading_parser:leadPrec "match "
      >> optional Term.generalizingParam
      >> optional Term.motive
      >> sepBy1 Term.matchDiscr ", "
      >> " with "
      >> ppDedent matchAlts

    @[builtin_tactic_parser]
    def introMatch := leading_parser nonReservedSymbol "intro"
      >> matchAlts
    ```

3. `decide`：用于可判定相等性的目标

    ```lean
    @[builtin_tactic_parser]
    def decide := leading_parser nonReservedSymbol "decide"
    ```

    `native_decide`：使用 `#eval` 对可判定性实例求值，效率高于 `decide`

    ```lean
    @[builtin_tactic_parser]
    def nativeDecide := leading_parser nonReservedSymbol "native_decide"
    ```

4. 内建表达式策略
    1. `«open»`

        ```lean
        @[builtin_tactic_parser]
        def «open» := leading_parser:leadPrec "open "
          >> Command.openDecl
          >> withOpenDecl (" in " >> tacticSeq)
        ```

    2. `«set_option»`

        ```lean
        @[builtin_tactic_parser]
        def «set_option» := leading_parser:leadPrec "set_option "
          >> identWithPartialTrailingDot
          >> ppSpace
          >> Command.optionValue
          >> " in "
          >> tacticSeq
        ```

## 2.5 句法范畴
<!-- TODO -->

## 2.6 其他范畴
### 2.6.1 层级范畴
1. `num`、`ident` 与 `hole`：数字、标识符与占位符

    ```lean

    @[builtin_level_parser]
    def num := checkPrec maxPrec
      >> numLit

    @[builtin_level_parser]
    def ident := checkPrec maxPrec
      >> Parser.ident

    @[builtin_level_parser]
    def hole := leading_parser "_"
    ```

2. 最大层级与层级增加，其中 `imax u v` 在 `v` 为 `0` 时得到 `0`

    ```lean
    @[builtin_level_parser]
    def paren := leading_parser "("
      >> withoutPosition levelParser
      >> ")"

    @[builtin_level_parser]
    def max := leading_parser nonReservedSymbol "max" true
      >> many1 (ppSpace >> levelParser maxPrec)

    @[builtin_level_parser]
    def imax := leading_parser nonReservedSymbol "imax" true
      >> many1 (ppSpace >> levelParser maxPrec)

    @[builtin_level_parser]
    def addLit := trailing_parser:65 " + "
      >> numLit
    ```

### 2.6.2 优先级范畴
1. `numPrio`：用于各种声明

    ```lean
    @[builtin_prio_parser]
    def numPrio := checkPrec maxPrec
      >> numLit

    def namedPrio := leading_parser atomic (" (" >> nonReservedSymbol "priority")
      >> " := "
      >> withoutPosition priorityParser
      >> ")"
    def optNamedPrio := optional namedPrio
    ```

2. `numPrec`：用于句法或宏等元编程声明

    ```lean
    @[builtin_prec_parser]
    def numPrec := checkPrec maxPrec
      >> numLit

    def «precedence» := leading_parser ":"
      >> precedenceParser maxPrec
    def optPrecedence := optional (atomic «precedence»)
    ```

### 2.6.3 do 元素范畴
1. 基础表达式
    1. `doLet` 与 `doLetRec`：`let` 局部定义

        ```lean
        @[builtin_doElem_parser]
        def doLet := leading_parser "let "
          >> optional "mut "
          >> letDecl

        @[builtin_doElem_parser]
        def doLetRec := leading_parser group ("let " >> nonReservedSymbol "rec ")
          >> letRecDecls
        ```

    2. `doExpr`：作为语句的项

        ```lean
        @[builtin_doElem_parser]
        def doExpr := leading_parser notFollowedByRedefinedTermToken
          >> termParser
          >> notFollowedBy (symbol ":=" <|> symbol "←" <|> symbol "<-") "ERROR INFO"
        ```

        1. `liftMethod`：简单提升嵌套活动．只能用于 `do` 语句块中

            ```lean
            @[builtin_term_parser]
            def liftMethod := leading_parser:minPrec leftArrow
              >> termParser
            ```

        2. `doReturn`：`return e` 将包围块求值为 `pure e`，跳过所有更深层的语句

            ```lean
            @[builtin_doElem_parser]
            def doReturn := leading_parser:leadPrec withPosition ("return"
              >> optional (ppSpace >> checkLineEq >> termParser)
            )
            ```

    3. `doLetArrow`：左箭头表达式

        ```lean
        def doIdDecl := leading_parser atomic (ident >> optType >> ppSpace >> leftArrow)
          >> doElemParser
        def doPatDecl := leading_parser atomic (termParser >> ppSpace >> leftArrow)
          >> doElemParser
          >> optional (checkColGt >> " | " >> doSeq)

        @[builtin_doElem_parser]
        def doLetArrow := leading_parser withPosition ("let "
          >> optional "mut "
          >> (doIdDecl <|> doPatDecl)
        )
        ```

2. 附加特性
    1. `doIf` 与 `doUnless`：条件语句

        ```lean
        @[builtin_doElem_parser]
        def doIf := leading_parser withResetCache
          <| withPositionAfterLinebreak
          <| ppRealGroup
          <| ppRealFill (ppIndent ("if " >> doIfCond >> " then") >> ppSpace >> doSeq)
            >> many (checkColGe "ERROR INFO"
              >> group (ppDedent ppSpace >> ppRealFill (elseIf >> doIfCond >> " then " >> doSeq))
            )
            >> optional (checkColGe "ERROR INFO"
              >> ppDedent ppSpace
              >> ppRealFill ("else " >> doSeq)
            )

        @[builtin_doElem_parser]
        def doUnless := leading_parser "unless "
          >> withForbidden "do" termParser
          >> " do "
          >> doSeq
        ```

    2. `doFor`：循环语句

        ```lean
        def doForDecl := leading_parser optional (atomic (ident >> " : "))
          >> termParser
          >> " in "
          >> withForbidden "do" termParser

        @[builtin_doElem_parser]
        def doFor := leading_parser "for "
          >> sepBy1 doForDecl ", "
          >> "do "
          >> doSeq
        ```

    3. `doMatch`：模式匹配

        ```lean
        @[builtin_doElem_parser]
        def doMatch := leading_parser:leadPrec "match "
          >> optional Term.generalizingParam
          >> optional Term.motive
          >> sepBy1 matchDiscr ", "
          >> " with"
          >> doMatchAlts
        ```

    4. `doBreak`、`doContinue` 与 `doReturn`：控制语句

        ```lean
        @[builtin_doElem_parser]
        def doBreak := leading_parser "break"

        @[builtin_doElem_parser]
        def doContinue := leading_parser "continue"

        @[builtin_doElem_parser]
        def doReturn := leading_parser:leadPrec withPosition ("return"
          >> optional (ppSpace >> checkLineEq >> termParser)
        )
        ```

    5. `doNested`：嵌套 `do` 语句块

        ```lean
        @[builtin_doElem_parser]
        def doNested := leading_parser "do "
          >> doSeq
        ```
