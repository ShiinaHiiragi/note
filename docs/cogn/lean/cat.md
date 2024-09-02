# 2 句法范畴

## 2.1 指令范畴
### 2.1.1 定义与声明

### 2.1.2 修饰符

### 2.1.3 辅助指令
1. `#eval`：规约项的值

    ```lean
    def eval := leading_parser "#eval "
      >> termParser
    ```

2. `#check`

## 2.2 项范畴
### 2.2.1 表达式
1. `leading_parser`：Lean 内部使用的句法解析器

    ```lean
    def «leading_parser»  := leading_parser:leadPrec "leading_parser"
      >> optExprPrecedence
      >> optional withAnonymousAntiquot
      >> ppSpace
      >> termParser
    ```

2. 占位符

### 2.2.2 绑定器

### 2.2.3 模式匹配

### 2.2.4 占位符

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
