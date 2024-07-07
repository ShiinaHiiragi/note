# 1 系统原理

Lean 是一种函数式编程语言，其理论基础是归纳构造演算，因此也可将其作为交互式定理证明器

## 1.1 编译原理

$$
\text{Lean String}
\xrightarrow{\text{Parser}}
\text{Lean Syntax}
\xrightarrow{\text{Elaboration}}
\text{Lean Expr}
\xrightarrow{\text{Evaluation}}
\text{C Code}
\xrightarrow{\text{C Compiler}}
\text{Binary Code}
$$

1. 句法解析：将 Lean `String` 元素转换为 Lean `Syntax` 元素
    1. 先执行一次 `syntax` 规则
    2. 然后执行零到多次 `(macro; syntax)` 规则，直到不存在可匹配的宏
2. Elaboration：将 Lean `Syntax` 元素转换为 Lean `Expr` 元素
3. Evaluation 与编译：将 Lean `Expr` 元素转换为可执行代码

## 1.2 环境配置
### 1.2.1 终端工具
1. `elan`：管理 Lean 编译器工具链（类比于 Node.js 的 `nvm`）
2. `lake`：构建 Lean 包及其依赖项（类比于 Node.js 的 `npm`）
3. `lean`：类型检查、编译各 Lean 文件以及提供有关当前正在编写的文件信息（类比于 Node.js 的 `node`）

### 1.2.2 模块与文件组织

## 1.3 风格与规约
1. 文件结构：行宽不超过 $100$ 字符
    1. 文件头：以 `/- -/` 包围，包括版权信息、作者列表以及对文件内容的描述
    2. 导入：分行导入所需模块
    3. 模块 Docstring：以 `/-! -/` 包围，使用 Markdown 语法，需要包括以下内容
        1. 文件标题
        2. 文件内容的总结（包括主要定义与定理，证明技巧等）
        3. 文件中使用到的记法（如有）
        4. 参考文献（如有）
2. 常量命名：以下规则对构类型与归纳类型的内部也适用
    1. `Prop`、`Type` 或 `Sort` 的结构类型、归纳类型与类型类使用 `UpperCamelCase`
    2. `Prop` 元素使用 `snake_case`，`Types` 元素的元素使用 `lowerCamelCase`
    3. 函数命名方式与其最终返回值相一致，例如类型为 `A → B → C` 的函数，命名方式与 `C` 的元素一致
    4. 部分缩略词被成组命名为全大写或全小写，具体以第一个字符的大小写为准，例如 `LT` 或 `LE`
3. 变量命名：
    1. 宇宙层级：`u, v, w, ...`
    2. 泛型：`α, β, γ, ...`
    3. 命题：`a, b, c, ...`
    4. 泛型的元素：`x, y, z, ...`
    5. 假设：`h, h₁, ...`
    6. 谓词或关系：`p, q, r, ...`
    7. 列表或集合：`s, t, ...`
    8. 自然数：`m, n, k, ...`
    9. 整数：`i, j, k, ...`
