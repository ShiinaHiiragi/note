# 4 元编程

## 4.1 句法解析参考
- Lean 内部 Parser 使用宏 `leading_parser parser` 进行句法解析

    ```lean
    @[builtin_term_parser]
    def «leading_parser» := leading_parser:leadPrec "leading_parser"
      >> optExprPrecedence
      >> optional withAnonymousAntiquot
      >> ppSpace
      >> termParser
    ```

### 4.1.1 解析器

### 4.1.2 组合子

## 4.2 系统 Monad
