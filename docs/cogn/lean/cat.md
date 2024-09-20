# 2 句法范畴

## 2.1 指令范畴
### 2.1.1 定义与声明
1. 定义与声明的相关解析器
    1. `declId`：可能跟随宇宙名称列表的标识符，形如 `foo` 或 `foo.{u,v}`

        ```lean
        def declId := leading_parser ident
          >> optional (".{"
            >> sepBy1 (recover ident (skipUntil (fun c =>c.isWhitespace || c ∈ [',', '}']))) ", "
            >> "}"
          )
        ```

    2. `declSig` 与 `optDeclSig`：常量声明时的（可选）参数列表与类型标注，形如 `: type`

        ```lean
        def declSig := leading_parser many (ppSpace >> (Term.binderIdent <|> Term.bracketedBinder))
          >> Term.typeSpec

        def optDeclSig := leading_parser many (ppSpace >> (Term.binderIdent <|> Term.bracketedBinder))
          >> Term.optType
        ```

    3. `declVal`：声明的右半部分，分为三种形式
        - `declValSimple`：形如 `:= expr`，用于简单声明
        - `declValEqns`：一系列 `| pat => expr`，用于 `match`
        - `whereStructInst`：`where` 及跟随于其后的 `field := value`，用于 `structure`

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

        def declVal := withAntiquot (mkAntiquot "declVal" `Lean.Parser.Command.declVal (isPseudoKind := true))
          <| declValSimple <|> declValEqns <|> whereStructInst
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

    3. `«structure»`：定义结构体

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

    2. `«partial»`

### 2.1.2 辅助指令
1. `eval`：对项进行归约

    ```lean
    def eval := leading_parser "#eval "
      >> termParser
    ```

2. `check`：仅检查项的类型而不求值

    ```lean
    def check := leading_parser "#check "
      >> termParser
    ```

## 2.2 项范畴
### 2.3.1 变量与元变量
1. `bracketedBinder`：括号绑定器

    ```lean
    def bracketedBinder (requireType := false) := withAntiquot (
        mkAntiquot "bracketedBinder" decl_name% (isPseudoKind := true)
    ) <| explicitBinder requireType
      <|> strictImplicitBinder requireType
      <|> implicitBinder requireType
      <|> instBinder

    def binderType (requireType := false) : Parser := if requireType
      then node nullKind (" : " >> termParser)
      else optional (" : " >> termParser)
    def binderTactic := leading_parser atomic (symbol " := " >> " by ")
      >> Tactic.tacticSeq
    def binderDefault := leading_parser " := "
      >> termParser
    ```

    1. `explicitBinder`：显式绑定器，形如 `(x y : A)` 或 `(x y)`，可通过 `(x : A := v)` 或 `(x : A := by tac)` 指定默认值

        ```lean
        def explicitBinder (requireType := false) := leading_parser ppGroup <| "("
          >> withoutPosition (many1 binderIdent
            >> binderType requireType
            >> optional (binderTactic <|> binderDefault)
          ) >> ")"
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

2. 元变量

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
      >> optional (
        checkWsBefore ""
        >> checkPrec leadPrec
        >> checkColGt
        >> levelParser maxPrec
      )

    @[builtin_term_parser]
    def prop := leading_parser "Prop"
    ```

    1. `Type`：类型
    2. `Sort`：分类
    3. `Prop`

2. 类型归属与类型标注
    1. `typeAscription`：类型归属记号，指示 Lean 将表达式解释为指定类型

        ```lean
        def typeAscription := leading_parser "("
          >> (withoutPosition (withoutForbidden (termParser >> " :" >> optional (ppSpace >> termParser))))
          >> ")"
        ```

    2. 通用（可选）类型标注

        ```lean
        def typeSpec := leading_parser " : " >> termParser
        def optType : Parser := optional typeSpec
        ```

3. 依值箭头表达式：右结合

### 2.3.3 函数与应用
1. $\lambda$ 表达式
2. 应用：左结合，可使用 `<|` 改变结合顺序

    ```lean
    def namedArgument := leading_parser (withAnonymousAntiquot := false) atomic ("(" >> ident >> " := ")
      >> withoutPosition termParser
      >> ")"
    def ellipsis := leading_parser (withAnonymousAntiquot := false) ".."
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

3. 扩展域记号

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

2. 字面值：包括整数、浮点数、字符串与字符

    ```lean
    @[builtin_term_parser]
    def num : Parser := checkPrec maxPrec >> numLit
    @[builtin_term_parser]
    def scientific : Parser := checkPrec maxPrec >> scientificLit
    @[builtin_term_parser]
    def str : Parser := checkPrec maxPrec >> strLit
    @[builtin_term_parser]
    def char : Parser := checkPrec maxPrec >> charLit
    ```

### 2.3.5 其他记号

## 2.3 属性范畴
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
