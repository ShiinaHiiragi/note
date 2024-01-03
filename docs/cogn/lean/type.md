# 3 类型系统

## 3.1 结构类型
1. 结构类型：`structure const where fields`，其中 `fields` 需要换行缩进且每一行形如 `x: α`

    ```haskell
    structure Point where
      x: Float
      y: Float
    deriving Repr
    
    def origin : Point := { x := 0.0, y := 0.0 }
    #eval origin    -- { x := 0.000000, y := 0.000000 }
    #eval origin.x  -- 0.000000
    ```

    - `deriving Repr` 自动构造输出此类型元素的代码，使得 `#eval` 可以显示计算结果

## 3.2 归纳类型

## 3.3 类型类
