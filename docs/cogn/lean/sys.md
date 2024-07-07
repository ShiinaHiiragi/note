# 1 系统原理

Lean 是一种函数式编程语言，其理论基础是归纳构造演算，因此可将其作为交互式定理证明器

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

1. 句法解析：将 Lean `String` 对象转换为 Lean `Syntax` 对象
    1. 先执行一次 `syntax` 规则
    2. 然后执行零到多次 `(macro; syntax)` 规则，直到不存在可匹配的宏
2. Elaboration：将 Lean `Syntax` 对象转换为 Lean `Expr` 对象
3. Evaluation 与编译：将 Lean `Expr` 对象转换为可执行代码

## 1.2 环境配置
### 1.2.1 终端工具
1. `elan`：管理 Lean 编译器工具链（类比于 Node.js 的 `nvm`）
2. `lake`：构建 Lean 包及其依赖项（类比于 Node.js 的 `npm`）
3. `lean`：类型检查、编译各 Lean 文件以及提供有关当前正在编写的文件信息（类比于 Node.js 的 `node`）

### 1.2.2 模块与文件组织

## 1.3 风格与规约
### 1.3.1 编码风格

### 1.3.2 命名规约
