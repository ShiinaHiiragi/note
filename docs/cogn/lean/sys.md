# 1 系统原理

## 1.1 编译过程
Lean 是一种函数式编程语言，其理论基础是归纳构造演算，因此也可将其作为交互式定理证明器

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

1. 句法解析（Parsing）：将 Lean `String` 元素转换为 Lean `Syntax` 元素
    1. 先执行一次 `syntax` 规则
    2. 然后执行零到多次 `(macro; syntax)` 规则，直到不存在可匹配的宏
2. 繁饰（Elaboration）：将 Lean `Syntax` 元素转换为 Lean `Expr` 元素、执行指令
3. 求值（Evaluation）与编译（Compilation）：将 Lean `Expr` 元素转换为可执行代码

## 1.2 环境配置
### 1.2.1 终端工具
1. `elan`：管理 Lean 编译器工具链（类比于 Node.js 的 `nvm`）
    1. `show`：列出所有工具链与 Lean 版本
    2. `update [toolchain]`：升级工具链与 Elan，未指定参数时升级所有工具链与 Elan
    3. `default <toolchain>`：指定默认工具链
    4. `toolchain <SUBCOMMAND>`：修改或查询已安装工具链
        1. `list`：列出所有已安装工具链
        2. `install`：安装或升级指定工具链
        3. `uninstall`：卸载工具链
        4. `link`：通过符号链接到一个目录以创建自定义工具链
    5. `which <command>`：列出运行指令的二进制文件
    6. `run <toolchain> <command>`：以指定工具链的环境配置运行指令
    7. `self <SUBCOMMAND>`：修改 Elan
        1. `update`：下载并安装 Elan 更新
        2. `uninstall`：卸载 Elan
2. `lake`：构建 Lean 包及其依赖项（类比于 Node.js 的 `npm`）
    1. `init <name> [template]`：在当前目录创建 Lean 包
    2. `new <name> [template]`：在新目录创建一个 Lean 包
    3. `build <targets>...`：构建目标
    4. `exe <exe> <args>`：构建可执行文件并在 `lake` 环境内执行
    5. `upload <tag>`：上传构建 Artifact 到 GitHub Release
    6. `clean`：删除构建输出
    7. `env <command>`：在 `lake` 环境内执行指令
    8. `script <SUBCOMMAND>`：管理并运行工作区脚本
        1. `list`：列出可用脚本，可简写为 `lake scripts`
        2. `run <script>`：运行脚本，可简写为 `lake run <script>`
        3. `doc <script>`：打印指定脚本的文档字符串
    9. `update`：升级依赖项并保存到 Manifest 文件
    10. `serve`：启动 Lean Language Server
3. `lean`：类型检查、编译各 Lean 文件以及提供有关当前正在编写的文件信息（类比于 Node.js 的 `node`）
    1. `--run`：以余下参数调用文件中的 `main` 定义（类型必须为 `IO Unit`）
    2. `--o=oname` / `-o`：创建 `olean` 文件
    3. `--i=ilean` / `-i`：创建 `ilean` 文件
    4. `--c=fname` / `-c` 指定 C 输出文件名
    5. `--bc=fname` / `-b` 指定 LLVM 二进制文件名
    6. `--root=dir`：设置根目录，从中计算输入文件的模块名

### 1.2.2 文件组织与模块
1. Lean 包是 Lake 代码分发的基本单位，包含如下内容
    1. `lean-toolchain`：包含包所使用的 Lean 特定版本标识符，默认配置如下

        ```plaintext
        leanprover/lean4:stable
        ```

    2. `lakefile.lean`：`lake` 构建所需配置，早期版本可使用 TOML 文件．`lakefile.lean` 默认配置如下

        ```lean
        import Lake
        open Lake DSL

        package «project» where

        lean_lib «Project» where

        @[default_target]
        lean_exe «project» where
        root := `Main
        ```

    3. `Main.lean`：Lean 编译器在此文件查找主函数 `main`
    4. 库：共享同一配置的模块集合，通常包括
        1. 模块 Root：根目录下的 Lean 文件，用于决定库内应当包含的模块
        2. 一系列模块 Glob：决定用于 `lake build` 的模块

        外部库是从其他语言构建得到的静态库

    5. 依赖项：也称作当前包的上游（当前包是依赖项的下游），通过如下语法引入

        ```lean
        require ["<scope>" /] <pkg-name> [@ <version>]
          [from <source>] [with <options>]
        ```

        1. 下次 `lake build`（或支持 Lean 的编辑器依赖更新）将自动下载对应依赖
        2. 依赖项具体版本信息会被记录于 `lake-manifest.json` 以保证可再现性
        3. 对于 `Mathlib`，在执行 `lake build` 前应先执行 `lake exe cache get` 以规避从零开始构建

    !!! note "工作区与目标"
        1. 工作区：Lake 的最大组织单元，它包括一个包（称为 Root）、可移动依赖项与 Lake 环境
        2. 目标：Lake 的基本构建单元
            1. 内建目标类型包括二进制可执行文件（从含有主函数的 Root 构建）、Lean 库与外部库
            2. Facet：从其他组织单元构建得到的元素

2. 模块：Lake 构建系统的最小代码单元，通常由 Lean 源代码、一系列二进制库（`olean` 或 `ilean`）以及系统共享库构成

    ```lean
    @[run_builtin_parser_attribute_hooks]
    def module := leading_parser header
      >> many (commandParser >> ppLine >> ppLine)

    def header := leading_parser optional («prelude» >> ppLine)
      >> many («import» >> ppLine)
      >> ppLine

    def «prelude» := leading_parser "prelude"

    def «import» := leading_parser "import "
      >> optional "runtime"
      >> identWithPartialTrailingDot
    ```

    1. `prelude`：不导入 Init.Prelude 模块
    2. `import`：传递性地导入指定模块
        1. Lean 将模块名的所有 `.` 解释为目录，模块层级的最后一个标识符为文件
        2. 以尖括号 `«...»` 包围模块名时可以使用空格或保留字

    !!! note "模块名层级与命名空间层级"
        Lean 中的模块名层级与命名空间层级解耦

        3. 模块名层级是代码分发结构，命名空间层级是代码组织结构
        4. `import` 用于导入对应模块，即使得对应模块代码可用，此时可以使用 `open` 打开导入模块内的命名空间

## 1.3 风格与规约
1. 文件结构：行宽不超过 $100$ 字符
    1. 文件头：以 `/- -/` 包围，包括版权信息、作者列表以及对文件内容的描述
    2. 导入：分行导入所需模块
    3. 模块文档字符串：以 `/-! -/` 包围，使用 Markdown 语法，需要包括以下内容
        1. 文件标题
        2. 文件内容的总结（包括主要定义与定理，证明技巧等）
        3. 文件中使用到的记号与参考文献（如有）
2. 常量命名：以下规则对构类型与归纳类型的内部也适用
    1. `Prop`、`Type` 或 `Sort` 的元素（结构类型、归纳类型与类型类）使用 `UpperCamelCase`
    2. `Prop` 元素的实例使用 `snake_case`，其余所有 `Types` 元素的实例使用 `lowerCamelCase`
    3. 函数命名方式与其最终返回值相一致，例如类型为 `A → B → C` 的函数，命名方式与 `C` 的元素一致
    4. 部分缩略词被成组命名为全大写或全小写，具体以第一个字符的大小写为准，例如 `LT` 或 `LE`
3. 变量命名：与通常的数学记号一致
    1. 宇宙层级：`u, v, w, ...`
    2. 泛型：`α, β, γ, ...`
    3. 泛型的元素：`x, y, z, ...`
    4. 命题：`a, b, c, ...`
    5. 假设：`h, h₁, ...`
    6. 谓词或关系：`p, q, r, ...`
    7. 列表或集合：`s, t, ...`
    8. 整数：`i, j, k, ...`
    9. 自然数：`m, n, k, ...`
