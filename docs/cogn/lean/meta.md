# 4 元编程

## 4.1 句法解析参考
- Lean 内部解析器使用宏 `leading_parser parser` 进行句法解析，调用函数 `leadingNode` 从而创建节点 `node name parser`，其中 `name : SyntaxNodeKind` 是节点名

    ```lean
    @[builtin_term_parser]
    def «leading_parser» := leading_parser:leadPrec "leading_parser"
      >> optExprPrecedence
      >> optional withAnonymousAntiquot
      >> ppSpace
      >> termParser
    ```

    1. 当 `parser` 为 `String` 元素时，存在 `Coe` 隐式转换为 `Parser` 元素的实现
    2. 称 `Parser → Parser` 元素为组合子，其在 `leading_parser` 宏中通常与其他 `Parser` 元素组合使用

### 4.1.1 解析器
1. `CategoryParser`：特定范畴的句法解析器

    ```lean
    def termParser                (prec : Nat := 0) : Parser := categoryParser `term    prec
    @[inline] def commandParser    (rbp : Nat := 0) : Parser := categoryParser `command  rbp
    @[inline] def attrParser       (rbp : Nat := 0) : Parser := categoryParser `attr     rbp
    @[inline] def tacticParser     (rbp : Nat := 0) : Parser := categoryParser `tactic   rbp
    @[inline] def syntaxParser     (rbp : Nat := 0) : Parser := categoryParser `stx      rbp
    @[inline] def levelParser      (rbp : Nat := 0) : Parser := categoryParser `level    rbp
    @[inline] def priorityParser   (rbp : Nat := 0) : Parser := categoryParser `prio     rbp
    @[inline] def precedenceParser (rbp : Nat := 0) : Parser := categoryParser `prec     rbp
    @[inline] def doElemParser     (rbp : Nat := 0) : Parser := categoryParser `doElem   rbp
    ```

2. 标识符解析器
    1. `ident` 与 `rawIdent`：解析（可能带有命名空间的）标识符
    2. `identWithPartialTrailingDot`：无法解析成功；用于自动补全
    3. `hygieneInfo`：不解析字符，捕捉环境信息并创建匿名标识符；用于实现 `have := ...` 句法
3. 字面值解析器
    1. `numLit`：解析二进制、八进制、十六进制或十进制的整数字面值
    2. `scientificLit`：解析科学计数法记号的浮点数字面值
    3. `strLit`：解析字符串字面值，可以包含 C 风格转义字符
    4. `charLit`：解析单个 Unicode 码点的字符字面值，可以包含 C 风格转义字符
    5. `nameLit`：解析以单个反引号开头的名称字面值
4. 位置解析器：规范代码缩进深度
    1. `colEq`：要求下一词元的位置严格等于保存位置
    2. `colGe`：要求下一词元的位置大于等于保存位置
    3. `colGt`：要求下一词元的位置严格大于保存位置
    4. `lineEq`：要求当前词元的行位置与保存位置相同
5. Pretty Printer：不读入字符，仅提出对 Pretty Printer 输出的建议

    ```lean
    @[inline] def ppHardSpace               : Parser := skip
    @[inline] def ppSpace                   : Parser := skip
    @[inline] def ppLine                    : Parser := skip
    @[inline] def ppRealFill                : Parser → Parser := id
    @[inline] def ppRealGroup               : Parser → Parser := id
    @[inline] def ppIndent                  : Parser → Parser := id
    @[inline] def ppDedent                  : Parser → Parser := id
    @[inline] def ppDedentIfGrouped         : Parser → Parser := id
    @[inline] def ppGroup (p : Parser)      : Parser := ppRealFill (ppIndent p)
    @[inline] def ppAllowUngrouped          : Parser := skip
    @[inline] def ppHardLineUnlessUngrouped : Parser := skip
    ```

### 4.1.2 组合子
1. 基础组合子
    1. `andthen(p, q)`：先后依次解析 `p` 与 `q`，是类型类 `AndThen` 的实现，因此也可使用其异构记号 `p >> q`
    2. `orelse(p, q)`：当且仅当解析 `p` 失败时解析 `q`，是类型类 `OrElse` 的实现，因此也可使用其异构记号 `p <|> q`
    3. `atomic(p)`：解析 `p`，且失败时不会读入额外字符．这一特性适用于 `p <|> q`，因其在 `p` 解析失败时不会回溯
    4. `recover(p, h)`：用 `h` 恢复 `p` 中产生的错误，直到得出正确状态，与 `<|>` 的区别较微妙
    5. `lookahead(p)`：解析 `p` 但不构建节点，且成功时回溯到原位；相当于在不读入下一词元的条件下对下文进行断言
    6. `notFollowedBy(p, info : String)`：当且仅当解析 `p` 失败时继续，否则返回消息 `info`
2. 位置组合子
    1. `withPosition(p)`：解析 `p`，记录并保存当前位置
    2. `withPosition(p)`：解析 `p`，并暂时忽略已保存位置
    3. `withForbidden(tk, p)`：解析 `p`，不允许出现词元 `tk`
    4. `withoutForbidden(p)`：解析 `p`，忽略不允许出现的词元（如有）
    5. `manyIndent(p)`：相当于 `withPosition((colGe p)*)`
    6. `many1Indent(p)`：相当于 `withPosition((colGe p)+)`
3. 附加组合子
    1. `optional(p)`：解析 `p`，失败时返回空值；也可写作 `(p)?`
    2. `many(p)`：重复解析 `p` 直到失败，当元数大于一时自动将 `p` 替换为 `group(p)`；也可写作 `(p)*`
    3. `many1(p)`：重复解析 `p` 直到失败，必须至少成功一次，当元数大于一时自动将 `p` 替换为 `group(p)`；也可写作 `(p)+`
    4. `group(p)`：解析 `p`，将结果封装在一个类型为 `groupKind` 的节点

## 4.2 系统级单子
