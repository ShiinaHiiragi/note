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
        3. `whereStructInst`：`where` 及跟随于其后的 `field := value`，用于 `structure`

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

    1. `abbrev`：缩写，Lean 会将其标记为可约定义（即可展开的定义）

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

    3. «inductive»：归纳类型，包括可以选择的枚举类型与可以包含自身实例的递归类型

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

    4. `«structure»`：定义结构体（与类型类）

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
                def structInstField := ppGroup
                  $ leading_parser structInstLVal >> " := " >> termParser
                def structInstFieldAbbrev := leading_parser atomic (ident
                  >> notFollowedBy ("." <|> ":=" <|> symbol "[") "ERROR INFO"
                )

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
                @[builtin_term_parser] def tuple := leading_parser "("
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

### 2.1.2 组织特性

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

    4. `instBinder`：实例绑定器，形如 `[C]` 或 `[inst : C]`

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
        @[builtin_term_parser] def arrow := trailing_parser checkPrec 25
          >> unicodeSymbol " → " " -> "
          >> termParser 25
        ```

    2. `depArrow` 与 `«forall»`：依值箭头表达式与任意符号，左结合

        ```lean
        @[builtin_term_parser] def depArrow := leading_parser:25 bracketedBinder true
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

### 2.3.3 函数与应用
1. $\lambda$ 表达式 <!-- TODO -->
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
    2. 若 `T` 是一个结构体类型且 `i` 是一个正数，则 `e.i` 是 `e` 的第 `i` 个字段之简写

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

2. 引号
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
        @[builtin_term_parser low] def quot := leading_parser "`("
          >> withoutPosition (incQuotDepth (many1Unbox commandParser))
          >> ")"
        ```

## 2.3 属性范畴
<!-- TODO：解释本文出现的所有属性 -->

### 2.3.1 内建属性

### 2.3.2 标签属性

### 2.3.3 参数属性

### 2.3.4 枚举属性

## 2.4 策略范畴

## 2.5 句法范畴
### 2.5.1 句法

### 2.5.2 宏

## 2.6 其他范畴
### 2.6.1 层级范畴

### 2.6.2 优先级范畴

### 2.6.3 do 元素范畴
