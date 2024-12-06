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

        1. `declValSimple`：形如 `:= expr`，用于简单声明
        2. `declValEqns`：一系列 `| pat => expr`，用于模式匹配定义
        3. `whereStructInst`：`where` 及跟随于其后的 `field := value`，用于结构体与类型类

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

    3. `«instance»`：类型类重载实例

        ```lean
        def «instance» := leading_parser Term.attrKind
          >> "instance"
          >> optNamedPrio
          >> optional (ppSpace >> declId)
          >> ppIndent declSig
          >> declVal
        ```

    4. `«inductive»`：归纳类型，包括可以选择的枚举类型与可以包含自身实例的递归类型

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
        3. 归纳类型本身不描述类型，需要 `optDeclSig` 参数才能使得类型成立

    5. `classInductive`：归纳类型类

        ```lean
        def classInductive := leading_parser atomic (group (symbol "class " >> "inductive "))
          >> recover declId skipUntilWsOrDelim
          >> ppIndent optDeclSig
          >> optional (symbol " :=" <|> " where")
          >> many ctor
          >> optDeriving
        ```

    6. `«structure»`：定义结构体与类型类

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

        1. `«extends»` <!-- TODO -->
        2. `structCtor`：结构体构造子，结构 `S` 的默认构造子名称为 `S.mk`
            - 构造子是一个接受所有字段作为输入值的函数，其名称置于与类型同名的命名空间中
            - 可通过在 `:=` 或 `where` 后、所有字段前添加 `name ::` 以修改默认构造子名称为 `name`
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

                - 若 `e` 与 `x` 同名，则 `:= e` 可被省略
                - 若结构体元素预期类型无法被自动推断，可通过 `:` 在大括号内指定类型（在大括号外指定类型的行为是 `typeAscription`）
                - 若已存在结构体元素 `legacy`，则可通过 `with` 创建一个部分不同的新元素，例如 `{ legacy with x := e }`

            2. `anonymousCtor`：匿名构造子，形如 `⟨e, ...⟩`

                ```lean
                @[builtin_term_parser]
                def anonymousCtor := leading_parser "⟨"
                  >> withoutPosition (withoutForbidden
                    (sepBy termParser ", " (allowTrailingSep := true))
                  )
                  >> "⟩"
                ```

                - 相当于 `c e ...`，其中预期类型是具有单个构造子 `c` 的归纳类型
                - 如果参数超过两个，则余下参数变为新匿名构造子应用，例如 `⟨a, b, c⟩ : α × (β × γ)` 等价于 `⟨a, ⟨b, c⟩⟩`

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

                - `()` 是 `Unit.unit` 的简写
                - `(a b)` 是 `Prod.mk a b` 的简写
                - `(a, b, c)` 是 `(a, (b, c))` 的简写，以此类推

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

4. `«deriving»`：单独为类型类派生实例

    ```lean
    @[builtin_command_parser]
    def «deriving» := leading_parser "deriving "
      >> "instance "
      >> derivingClasses
      >> " for "
      >> sepBy1 (recover ident skip) ", "
    ```

### 2.1.2 组织特性
1. `namespace`：将一系列声明放在命名空间

    ```lean
    @[builtin_command_parser]
    def «namespace» := leading_parser "namespace "
      >> checkColGt
      >> ident
    ```

    1. Lean 中的每个名称都位于一个命名空间，且多层命名空间可被直接定义
    2. 命名空间名称仅用作前缀，不假设本身是否被定义

2. `«section»`：限制 `variable` 的作用范围

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

4. `«open»`：在不显式指定的情况下使用对应命名空间内的名称

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

    1. `openSimple`：打开命名空间
    2. `openOnly`：仅打开命名空间内的特定名称

5. `«export»`：`export Some.Namespace (name₁ name₂)` 使得 `name₁` 与 `name₂`

    ```lean
    @[builtin_command_parser]
    def «export» := leading_parser "export "
      >> ident
      >> " ("
      >> many1 ident
      >> ")"
    ```

    1. 在当前命名空间无需前缀 `Some.Namespace` 即可访问
    2. 在 `export` 所在命名空间 `N` 之外以 `N.name₁` 与 `N.name₂` 形式访问

### 2.1.3 辅助指令
1. `eval`：对项进行归约

    ```lean
    @[builtin_command_parser]
    def eval := leading_parser "#eval "
      >> termParser
    ```

2. `check`：仅检查项的类型而不求值

    ```lean
    @[builtin_command_parser]
    def check := leading_parser "#check "
      >> termParser
    ```

## 2.2 项范畴
### 2.3.1 变量与元变量
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

    @[builtin_term_parser] def explicit := leading_parser "@"
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

2. 元变量 <!-- TODO -->

### 2.3.2 宇宙与类型
1. `Type` 与 `Sort`

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

    1. `Type`：类型 <!-- TODO -->
    2. `Sort`：分类 <!-- TODO -->
    3. `Prop` <!-- TODO -->

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

3. 类型归属与类型标注
    1. `typeAscription`：类型归属记号，指示 Lean 将表达式解释为指定类型

        ```lean
        def typeAscription := leading_parser "("
          >> (withoutPosition (withoutForbidden
            (termParser >> " :" >> optional (ppSpace >> termParser))
          ))
          >> ")"
        ```

    2. 通用（可选）类型标注

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

### 2.3.3 函数与应用
1. `«fun»`：$\lambda$ 表达式，即匿名函数

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

2. 应用：左结合，可使用 `<|` 改变结合顺序

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
    2. `ellipsis`：省略号 `..`
    3. `termParser`：直接传入一个普通项

3. 扩展字段记号：若 `e : T`，则可将 `T.f e` 简记为 `e.f`，`f` 可以是索引或标识符

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

### 2.3.4 标识符与字面值
1. 标识符与占位符

    ```lean
    @[builtin_term_parser]
    def ident := checkPrec maxPrec >> Parser.ident
    @[builtin_term_parser]
    def hole := leading_parser "_"
    @[builtin_term_parser]
    def syntheticHole := leading_parser "?" >> (ident <|> hole)
    def binderIdent : Parser := ident <|> hole
    ```

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

    2. `quot`：（一系列）命令的句法引用，使用 `:` 指定句法成分种类

        ```lean
        @[builtin_term_parser low]
        def quot := leading_parser "`("
          >> withoutPosition (incQuotDepth (many1Unbox commandParser))
          >> ")"
        ```

### 2.3.5 局部定义
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
    2. `letPatDecl`：形如 `let pat := e`，其中 `pat` 是任意项
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

### 2.3.6 其他记号
1. `«match»`：模式匹配，形如 `match e, ... with | p, ... => f | ...`

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
    3. `matchAlts`：若以 `,` 分隔多个 `matchDiscr`，则 `matchAlts` 也应对应相同数量的参数

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

3. `«open»`：区别于作为命令的 `open`，仅使 `open` 作用于单独语句上

    ```lean
    @[builtin_term_parser]
    def «open» := leading_parser:leadPrec "open"
        >> Command.openDecl
        >> withOpenDecl (" in " >> termParser)
    ```

## 2.3 属性范畴
- 与 Lean 声明关联的元数据
    1. 内建属性：先于 `Lean.Parser` 定义的属性
    2. 标签属性：在定义所在模块中标记声明
    3. 参数属性：标签属性的变体，可以在其中将参数附加到属性
    4. 枚举属性：给定类型为 `α` 的列表 `[a₁, a₂, ..., aₙ]`，枚举属性提供属性 `Attrᵢ` 用于将值 `aᵢ` 与声明关联起来

### 2.3.1 内建属性
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
    1. `instance`：标记类型类实例
    2. `default_instance`：标记类型类默认实例
3. `inherit_doc`：从指定声明继承文档

### 2.3.2 标签属性
1. `match_pattern`：标记可以在模式中使用的定义
2. Lake DSL 相关属性
    1. `package`：将定义标记为 Lake 包配置
    2. `package_dep`：将定义标记为 Lake 包依赖项
    3. `script`：将定义标记为 Lake 脚本
    4. `default_script`：将 Lake 脚本标记为包的默认脚本
    5. `lean_lib`：将定义标记为 Lake Lean 库目标配置
    6. `lean_exe`：将定义标记为 Lake Lean 可执行目标配置
    7. `extern_lib`：将定义标记为 Lake 外部库目标
    8. `target`：将定义标记为自定义 Lake 目标
    9. `default_target`：将 Lake 目标标记为包的默认目标

### 2.3.3 参数属性
1. `export`：代码生成器使用的名称
2. `extern`：指定外部函数作为定义实现
3. `implemented_by`：实现 `opaque` 常量的 Lean 函数名称

### 2.3.4 枚举属性
1. `inline`：标记定义为内联
2. `noinline`：标记定义为不内联
3. `macro_inline`：标记定义在 ANF 转换之前始终内联
4. `always_inline`：标记定义始终内联

## 2.4 策略范畴

## 2.5 句法范畴
### 2.5.1 句法

### 2.5.2 宏

## 2.6 其他范畴
### 2.6.1 层级范畴

### 2.6.2 优先级范畴

### 2.6.3 do 元素范畴
1. `doLet`：局部定义

    ```lean
    @[builtin_doElem_parser]
    def doLet := leading_parser "let "
      >> optional "mut "
      >> letDecl
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

### 2.6.4 通用记号

```lean
def darrow : Parser := " => "

def namedPrio := leading_parser atomic (" (" >> nonReservedSymbol "priority")
  >> " := "
  >> withoutPosition priorityParser
  >> ")"
def optNamedPrio := optional namedPrio
```
