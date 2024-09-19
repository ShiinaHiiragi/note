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
        def typeSpec := leading_parser " : " >> termParser
        def declSig := leading_parser many (ppSpace >> (Term.binderIdent <|> Term.bracketedBinder))
          >> Term.typeSpec

        def optType : Parser := optional typeSpec
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

3. `declModifiers`：声明修饰符

    ```lean
    def declModifiers (inline : Bool) := leading_parser optional docComment
      >> optional (Term.«attributes» >> if inline then skip else ppDedent ppLine)
      >> optional visibility
      >> optional «noncomputable»
      >> optional «unsafe»
      >> optional («partial» <|> «nonrec»)
    ```

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
### 2.3.1 表达式

### 2.3.2 记号
1. `typeAscription`：类型归属记号，指示 Lean 将表达式解释为指定类型

    ```lean
    def typeAscription := leading_parser "("
      >> (withoutPosition (withoutForbidden (termParser >> " :" >> optional (ppSpace >> termParser))))
      >> ")"
    ```

2. ...

### 2.3.3 绑定器
1. 括号绑定器

    ```lean
    def bracketedBinder (requireType := false) := withAntiquot (
        mkAntiquot "bracketedBinder" decl_name% (isPseudoKind := true)
    ) <| explicitBinder requireType
      <|> strictImplicitBinder requireType
      <|> implicitBinder requireType
      <|> instBinder
    ```

### 2.3.4 模式匹配

### 2.3.5 其他

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
