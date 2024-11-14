### 2.2 C++

#### 2.2.1 STL

##### （一）\<iostream\>

1. `std::cout.setf(\_Fmtflags)/std::cout.unsetf(\_Fmtflags)`

    - 用 `<ios>` 中的成员函数 `std::cout.setf(std::ios::fixed);` 和 `std::cout.unsetf(std::ios::fixed);` 可以启用或关闭 `std::fixed` 的效果

    - 如果想要同时关闭多个操作符，可以用管道符，例如 `std::cout.unsetf(std::ios::fixed | std::ios::scientific);`

    - 也可以直接在 `std::ostream` 流中使用 `std::fixed`。注意，`std::fixed` 和 `std::ios::fixed` 不能混用，两者不是同一类型

        ```C++
        #include <iostream>
        
        int main()
        {
          std::cout.setf(std::ios::fixed);
          std::cout << 2.4 << "\n";          // -> 2.400000
          std::cout.unsetf(std::ios::fixed);
          std::cout << 2.4 << "\n";          // -> 2.4
          std::cout << std::fixed << 2.4;    // -> 2.400000
          return 0;
        }
        ```

2. `std::oct/std::dec/std::hex`

    - `std::oct/std::dec/std::hex` 分别按照八进制/十进制/十六进制的方式输出数字

    - 对于十六进制，使用 `std::uppercase/std::lowercase` 使字母强制大/小写

        ```C++
        #include <iostream>
        
        int main()
        {
          std::cout << std::hex << 15 << "\n"; // -> f
          std::cout << std::uppercase << 15;   // -> F
          return 0;
        }
        ```

3. `std::showbase/std::showpos/std::showpoint`

    - C++ 显示数据会以最简方式表示

    - 用 `std::showbase` 可以强制显示数制，用 `std::showpos` 强制显示正号，用 `std::showpoint` 强制显示小数点

        ```C++
        #include <iostream>
        
        int main()
        {
          std::cout << std::hex << std::showbase << 16 << "\n";
            // -> 0x10
          std::cout.unsetf(std::ios::showbase | std::ios::hex);
          std::cout << std::showpos << 16 << "\n";
             // -> +16
          std::cout.unsetf(std::ios::showpos);
          std::cout << (double)2 << " " << std::showpoint << (double)2;
            // -> 2 2.00000
          return 0;
        }
        ```

4. `std::fixed/std::scientific`

    - `std::fixed` 可以得到小数点位数固定的数字,`std::scientific` 用科学计数法表示数字

    - 以上两个操作符默认均为六位，可以通过 `<iomanip>` 中的 `std::setprecision(int)` 改变

        ```C++
        #include <iostream>
        
        int main()
        {
          std::cout << std::fixed << 2.4 << "\n";  // -> 2.400000
          std::cout.unsetf(std::ios::fixed);
          std::cout << std::scientific << 2.4;     // -> 2.400000e+00
          return 0;
        }
        ```

5. `std::left/std::right/std::internal`

    - 可以将输出的数字居左/居右/居中，与 `<iomanip>` 中的 `std::setw(int)` 配合使用

6. `std::cin` 相关

    - `std::cin` 的成员函数 `std::cin.eof()` 可以读取文件标准流，返回是否读取到结尾
    - 操作符 `std::skipws` 可以使 `std::cin` 忽略前导空白符，默认已经开启
    - 函数 `std::ios::sync_with_stdio(false);` 取消与 `stdio` 的同步，可以给 `std::cin` 提速

##### （二）\<iomanip\>

1. `std::setiosflags(\_Fmtflags)/std::resetiosflags(\_Fmtflags)`

    - 在 `std::ostrem` 中用 `<iomanip>` 的控制符 `std::setiosflags(std::ios::fixed);` 和 `std::resetiosflags(std::ios::fixed);` 也可以启用或关闭 `<ios>` 中的控制符 `std::fixed` 的效果

        ```C++
        #include <iostream>
        #include <iomanip>
        
        int main()
        {
          std::cout << std::setiosflags(std::ios::fixed) << 2.4 << "\n";
            // -> 2.400000
          std::cout << std::resetiosflags(std::ios::fixed) << 2.4;
            // -> 2.4
          return 0;
        }
        ```

2. `std::setbase(int)`

    - 参数可以是 8，10，16；效果与 `<ios>` 中的 `std::oct`/`std::dec`/`std::hex` 一致

        ```C++
        #include <iostream>
        #include <iomanip>
        
        int main()
        {
          std::cout << std::setbase(16) << 16;    // -> 10
          return 0;
        }
        ```

3. `std::setprecision(int)`

    - 最终结果会四舍五入

    - 直接使用时，指定有效数字最大位数

    - 与 `std::fixed` 合用时，强制指定小数点位数

    - 与 `std::scientific` 合用时，强制指定小数点位数，用科学计数法表示

        ```C++
        #include <iostream>
        #include <iomanip>
        
        int main()
        {
          std::cout << std::setprecision(3) << 2.718281828 << "\n";
            // -> 2.72
          std::cout << std::fixed << std::setprecision(2) << 2.0 << "\n";
            // -> 2.00
          std::cout << std::scientific << std::setprecision(2) << 2.0;
            // -> 2.00e+00
          return 0;
        }
        ```

4. `std::setw(int)/std::setfill(char)`

    - 用 `std::setw(int)` 指定输出宽度，用 `std::setfill(char)` 指定填充内容

    - 可以配合 `std::left/std::right/std::internal` 左/右/居中对齐

    - 当输出长度大于指定宽度时，`std::setw(int)` 不起作用

    - 两个符号都只能作用于紧随其后的内容

        ```C++
        #include <iostream>
        #include <iomanip>
        
        int main()
        {
          std::cout << std::setfill('0') << std::setw(3) << 16;
          std::cout << std::left << std::setfill('_') << std::setw(4) << 16;
          std::cout << 16;       // -> 01616__16
          return 0;
        }
        ```

##### （三）\<string\>

1. `std::string substr(int, int)`

    - `str.substr(int start, int length)` 返回一个从 `str[start]` 开始，向后 `length` 个字符的新子串对象

    - 当 `length` 超过字符串尾时，只会输出到 `str[str.size() - 1]` 的位置

        ```C++
        #include <iostream>
        #include <string>
        
        int main()
        {
          std::string str = "This_is_a_string.";
          std::cout << str.substr(5, 10) << "\n";    // -> is_a_strin
          std::cout << str.substr(5, 15);            // -> is_a_string.
          return 0;
        }
        ```

2. `replace(int, int, A(, B(, C)))/insert(int, A(, B(, C)))`

    - `str.replace(int start, int length, A(, B(, C)))` 可以替换从 `str[start]` 开始，向后 `length` 个字符的字串，返回自身引用

    - `str.insert(int start, A(, B(, C)))` 可以在 `str[start]` 处插入字串，返回自身引用

    - 后面的参数分别对应不同的替换方式，具体见下例

        ```C++
        #include <iostream>
        #include <string>
        
        int main()
        {
          std::string str[6];
          for (int i = 0; i < 6; i += 1)
            str[i] = "This_is_a_string.";
          std::cout << str[0].replace(2, 5, "+++++") << "\n";
            // -> Th+++++_a_string.
          std::cout << str[1].replace(2, 5, 4, '+') << "\n";
            // -> Th++++_a_string.
          std::cout << str[2].replace(2, 5, "12345", 3, 2) << "\n";
            // -> Th45_a_string.
          std::cout << str[3].insert(2, "+++++") << "\n";
            // -> Th+++++is_is_a_string.
          std::cout << str[4].insert(2, 4, '+') << "\n";
            // -> Th++++is_is_a_string.
          std::cout << str[5].insert(2, "12345", 3, 2);
            // -> Th45is_is_a_string.
          return 0;
        }
        ```

3. `erase(int(, int))`

    - `str.erase(int start, int length)` 删除从 `str[start]` 开始，向后 `length` 个字符的字串，返回自身引用

    - `str.erase(int start)` 删除从 `str[start]` 开始直到末尾的所有字符

        ```C++
        #include <iostream>
        #include <string>
        
        int main()
        {
          std::string str_a = "This_is_a_string.", str_b = str_a;
          std::cout << str_a.erase(5) << "\n";
            // -> This_
          std::cout << str_b.erase(5, 5);
            // -> This_string.
          return 0;
        }
        ```

4. 查找子串

    - 查找函数
        - `find/rfind`：从前往后/从后往前查找子串或字符出现的位置
        - `find_first_of/find_last_of`：从前往后/从后往前查找字串首次出现的位置
        - `find_first_not_of/find_last_not_of`：从前往后/从后往前查找首次出现未包含字符的位置
    - 如果查找不到，则返回 `string::npos`，这是 `string` 类中定义的静态变量

##### （四）容器

1. 共有成员：部分容器没有下表所示的一些函数

    - 类型成员

        | 成员                                         | 功能         |
        | :------------------------------------------- | :----------- |
        | `ContainerType\<T\>::size_type`              | 长度类型     |
        | `ContainerType\<T\>::value_type`             | 数据类型     |
        | `ContainerType\<T\>::reference`              | 引用类型     |
        | `ContainerType\<T\>::const_reference`        | 常引用类型   |
        | `ContainerType\<T\>::iterator`               | 迭代器       |
        | `ContainerType\<T\>::const_iterator`         | 常迭代器     |
        | `ContainerType\<T\>::reverse_iterator`       | 反向迭代器   |
        | `ContainerType\<T\>::const_reverse_iterator` | 反向常迭代器 |

    - 基本函数

        | 成员                               | 功能                                         |
        | :--------------------------------- | :------------------------------------------- |
        | `ContainerType\<T\> c`             | 生成一个空容器                               |
        | `ContainerType\<T\> c1(n)`         | 生成容量为 n，值为默认的容器                 |
        | `ContainerType\<T\> c1(n, t)`      | 生成容量为 n，值均为t的容器                  |
        | `ContainerType\<T\> c(begin, end)` | 复制 [begin, end) 区间内的元素，作为容器初值 |
        | `ContainerType\<T\> c1(c2)`        | 生成一个按值复制的容器                       |
        | `ContainerType\<T\> c1 = c2`       | 生成一个按值复制的容器                       |
        | `~ContainerType\<T\>()`            | 析构函数                                     |
        | `c1 = c2`                          | 将 c2 的元素复制给 c1                        |

    - 比较运算符

        | 成员       | 功能                    |
        | :--------- | :---------------------- |
        | `c1 == c2` | 判断是否 c1 等于 c2     |
        | `c1 != c2` | 判断是否 c1 不等于 c2   |
        | `c1 < c2`  | 判断是否 c1 小于 c2     |
        | `c1 > c2`  | 判断是否 c1 大于 c2     |
        | `c1 <= c2` | 判断是否 c1 小于等于 c2 |
        | `c1 >= c2` | 判断是否 c1 大于等于 c2 |

    - 迭代器与引用

        | 成员         | 功能                                         |
        | :----------- | :------------------------------------------- |
        | `c.begin()`  | 返回一个迭代器，指向第一个元素               |
        | `c.end()`    | 返回一个迭代器，指向最后一个元素的下一位置   |
        | `c.cbegin()` | 返回一个常迭代器，指向第一个元素             |
        | `c.cend()`   | 返回一个常迭代器，指向最后一个元素的下一位置 |
        | `c.rbegin()` | 返回一个迭代器，指向倒数第一个元素           |
        | `c.rend()`   | 返回一个迭代器，指向第一个元素的前一位置     |
        | `c.front()`  | 返回首元素的引用                             |
        | `c.back()`   | 返回尾元素的引用                             |

    - 插入与删除

        | 成员                      | 功能                                                                     |
        | :------------------------ | :----------------------------------------------------------------------- |
        | `c.clear()`               | 移除所有元素，令容器为空                                                 |
        | `c.insert(t)`             | 将 t 一个副本插入 c 中，用于无序或自动排序的容器                         |
        | `c.insert(it, t)`         | 将 t 一个副本插入到 it 处，返回值和 it 的意义并不相同                    |
        | `c.insert(it, n, t)`      | 将 t 一个 n 个副本插入到 it 处                                           |
        | `c.insert(it, begin,end)` | 将 [begin, end) 区间内元素的副本插入it处                                 |
        | `c.erase(it)`             | 移除 it 指向的元素                                                       |
        | `c.erase(begin,end)`      | 移除 [begin, end) 区间内的所有元素，某些容器会返回没有被移除的第一个元素 |
        | `c.push_front(t)`         | 在容器头部增加一个元素                                                   |
        | `c.pop_front()`           | 删除容器第一个元素                                                       |
        | `c.push_back(t)`          | 在容器最后增加一个元素，此时会调用 T 的复制构造函数                      |
        | `c.pop_back()`            | 删除容器最后一个元素                                                     |

    - 其他函数

        | 成员                     | 功能                                        |
        | :----------------------- | :------------------------------------------ |
        | `c.empty()`              | 判断容器是否为空                            |
        | `c.size()`               | 返回容器中的元素数量                        |
        | `c.max_size()`           | 返回容器最大的可以存储的元素                |
        | `c.capacity()`           | 返回容器当前能够容纳的元素数量              |
        | `at()/operator\[\]\(i\)` | 随机访问下标为i的位置,前者会检查是否越界    |
        | `c1.swap(c2)`            | 交换 c1 和 c2 的值，也可以用 `swap(c1, c2)` |
        | `c.get_allocator()`      | 返回容器的内存模型                          |

2. `<utility>`

    - 用 `std::pair<T, V>(T, V)` 初始化一个数对

    - `struct pair` 可以直接使用 `first/second` 访问成员变量

        ```c++
        #include <iostream>
        #include <utility>
        
        int main()
        {
          std::pair<int, int> point(2, 4);
          std::cout << point.first << " " << point.second;
            // -> 2 4
          return 0;
        }
        ```

3. `<array>`

    - 用 `std::array<T, size_t>` 初始化一个STL数组，这个数组的大小是固定的，大小必须要是一个常量

    - `fill(T)` 可以整体变化数组内所有数据

    - `data()` 或 `operator&` 都可以取到头指针

        ```c++
        #include <iostream>
        #include <array>
        
        int main()
        {
          std::array<int, 5> arr = {1, 2, 3, 4, 5};
          arr.fill(0);
          for (int i = 0; i < 5; i += 1)
            std::cout << arr[i] << " ";
            // -> 0 0 0 0 0
          std::cout << "\n" << arr.data() << " " << &arr;
            // -> 0x61fdf0 0x61fdf0
          return 0;
        }
        ```

4. `<set>`

    - 可以用大括号的形式初始化集合，也可以用 `insert(T)` 函数添加元素

    - `std::set_intersection()/std::set_union()/std::set_difference()/std::set_symmetric_difference()` 可以分别求集合的交、并、差、对称差

    - `<set>` 相对于 `<unordered_set>` ，内部的元素按升序排列

        ```C++
        #include <iostream>
        #include <string>
        #include <set>
        #include <iterator>
        #include <algorithm>
        
        int main()
        {
          std::set<int> a = {1, 2, 3, 4, 5};
          std::set<int> b = {2, 3, 4, 5, 6};
          a.insert(0);
          std::set<int> c;
          std::set_intersection(a.begin(), a.end(), b.begin(), b.end(), std::inserter(c, c.begin()));
          for (std::set<int>::iterator it = c.begin(); it != c.end(); it++)
            std::cout << *it << " ";  // -> 2 3 4 5
          return 0;
        }
        ```

5. `<map>`

    - 用 `std::map<T, V>` 初始化一个散列表，`std::map<T, V>::value_type` 就是 `std::pair<T, V>`

    - 用 `insert(std::pair<T, V>)` 或 `operator[](T, V)` 插入新的键值对；当插入的新键与 map 中有重复时，前者会添加失败，后者会覆盖对应的值

    - 用 `count(T)` 或 `find(T)` 寻找对应的值，前者返回个数（0 或 1），后者返回对应的迭代器，如果找不到，则返回 `end()`

    - 除了普通的 `erase`，`std::map` 还支持通过 key 值删除元素

        ```C++
        #include <iostream>
        #include <string>
        #include <map>
        
        int main()
        {
          std::map<int, std::string> mapping;
          mapping.insert(std::pair<int, std::string>(1, "one"));
          mapping[2] = "two";
          std::cout << mapping.count(0) << "\n";  // -> 0
          std::map<int, std::string>::iterator iter = mapping.find(2);
          std::cout << iter->second;  // -> two
          mapping.erase(1);
          return 0;
        }
        ```

    - 与 `<map>` 不同，`<unordered_map>` 不会按照升序排列键的值

    - C++11 之后，可以用大括号的方式初始化散列表的值

        ```C++
        #include <iostream>
        #include <string>
        #include <unordered_map>
        
        int main()
        {
          std::unordered_map<int, std::string> mapping =
            {{2, "two"}, {3, "three"}, {1, "one"}, {4, "four"}};
          std::cout << mapping.begin()->second;  // -> four
          return 0;
        }
        ```

##### （五）C 标准库

- `<cstdlib>`

    - `size_t`：扩展为 `unsigned __int64`，也就是 `unsigned long long int`

    - 随机数：与 `<ctime>` 一同使用

        ```C++
        #include <iostream>
        #include <cstdlib>
        #include <ctime>
        
        int main()
        {
          std::srand((unsigned int)time(nullptr));
          std::cout << rand() % 100;
          return 0;
        }
        ```

#### 2.2.2 Feature of C++

##### （一）指针、引用与常量

1. 二维指针

    - `int (*p)[4]` → p指向一个含有四格的二维数组的一列，指针指向层次为 `int(*)[4]` → `int*` → `int`

    - `int *p[4]` → p指向一个含有四个 `int*` 的数组，指针指向层次为 `int**` → `int*` → `int`

    - `int **p` → p指向一个 `int*` 的元素，指针指向层次为 `int**` → `int*` → `int`

        > `int(*)[4]` 与 `int**` 本质上是两种指针，没有自动类型转换；所以可以看出，指针数组和二级指针更加接近；

2. 利用 `new` 生成二维数组

    - 用行指针：必须指定一行的大小

        ```C++
        int main()
        {
          int n;
          std::cin >> n;
          int (*arr)[16] = new int[n][16];
          delete[] arr;
          return 0;
        }
        ```

    - 用指针数组：可以任意指定二维的大小，但是较为麻烦

        ```C++
        int main()
        {
          int x, y;
          std::cin >> x >> y;
          int** p = new int*[x];
          for (int i = 0; i < x; i += 1)
            p[i] = new int[y]; 
          for (int i = 0; i < x; i += 1)
            delete[] p[i];
          delete[] p;
          return 0;
        }
        ```

3. 内建字符串与字符数组

    ```C++
    char str_a[] = {'s', 't', 'r', 'i', 'n', 'g', '\0'};
    char str_b[] = "string";
    const char* str_c = "string";
    str_c = "new";
    ```

4. 右值引用

    - 左值和右值

        - 左值：可以取地址并且有名字的东西
        - 右值：不能取地址的没有名字的东西

    - 右值的分类

        - 纯右值：不和对象关联的原始字面量、运算表达式产生的临时变量、非引用返回的临时变量、lambda表达式等
        - 将亡值：将要移动的对象、`std::move` 函数的返回值、`T&&` 函数/转换为 `T&&` 类型转换函数的返回值

    - 引用的类型

        - 左值引用：非常值引用只能是左值，否则可以是右值

        - 右值引用：被引用的值只能是右值

        - 引用折叠：如果在泛型编程中有 `template <class T>` 且 `T function(T&& param) {}` 函数，T的推断类型有可能也是引用；这里的 `&&` 是一个未定义的引用类型，称为universal references，它是左值引用还是右值引用取决于它的初始化；此时会引入引用折叠的规则（`const T&&` 不算在内）

            - 两个右值引用的折叠仍然为右值引用
            - 其他所有情况均为左值引用（例：`T` 为 `string&`，则 `T&&` 为左值引用）

            ```C++
            class NewClass
            {
            public:
              NewClass() : a(0) {}
            private:
              int a;
            };
            NewClass get_temp_new_class() { return NewClass(); }
            
            int main()
            {
              int num = 16;
              int& a = num;
              // int& a = 16;
              // error: cannot bind non-const lvalue reference
              // of type 'int&' to an rvalue of type 'int'
              const int& b = num;
              const int& c = 16;
              // int&& d = num;
              // error: cannot bind rvalue reference of
              // type 'int&&' to lvalue of type 'int'
              int&& d = 16;
              const int&& e = 16;
              NewClass&& f = get_temp_new_class();
              // NewClass& f = get_temp_new_class();
              // error: cannot bind non-const lvalue reference
              // of type 'NewClass&' to an rvalue of type 'NewClass'
              return 0;
            }
            ```

            |    引用类型    | 非常量左值 | 常量左值 | 非常量左值 | 常量右值 |
            | :------------: | :--------: | :------: | :--------: | :------: |
            | 非常量左值引用 |     〇     |    ×     |     ×      |    ×     |
            |  常量左值引用  |     〇     |    〇    |     〇     |    〇    |
            | 非常量右值引用 |     ×      |    ×     |     〇     |    ×     |
            |  常量右值引用  |     ×      |    ×     |     〇     |    〇    |

    - 移动复制构造函数可以减少深拷贝开销，增加速度，具体见下例

        - `String("Hello")` 是根据 `const char* = "Hello"` 生成的对象，如果使用普通的复制构造函数，则会根据 `String("Hello")` 再申请空间，生成新的字符串，并将原来的字符串析构

        - 如果有移动复制构造函数，由于 `String("Hello")` 是右值，则会优先调用移动复制构造函数，将 `String("Hello")` 指针指向内容交给 `vec_str[i]`，减小开销

        - 如果是 `String temp = String("Hello")`，依然可以用 `vec_str.push_back(std::move(temp))` 调用移动复制构造函数

        - 如果移动复制构造函数没有定义，`std::move()` 不会发生错误，而会失效，此时会调用复制构造函数

            ```C++
            #include <iostream>
            #include <cstring>
            #include <vector>
            
            class String
            {
            public:
              String(const char* cstr = nullptr)
              {
                if (cstr)
                {
                  m_data = new char[strlen(cstr)+1];
                  strcpy(m_data, cstr);
                }
                else
                {
                  m_data = new char[1];
                  *m_data = '\0';
                }
              }
              String(const String& str)
              {
                CCtor += 1;
                m_data = new char[strlen(str.m_data) + 1];
                strcpy(m_data, str.m_data);
              }
              String(String&& str) noexcept : m_data(str.m_data)
              {
                MCtor += 1;
                str.m_data = nullptr;
              }
              String& operator=(const String& str)
              {
                if (this == &str)
                  return *this;
                delete[] m_data;
                m_data = new char[strlen(str.m_data) + 1];
                strcpy(m_data, str.m_data);
                return *this;
              }
              String& operator=(String&& str) noexcept
              {
                MAsgn += 1;
                if (this == &str)
                  return *this;
                delete[] m_data; 
                m_data = str.m_data;
                str.m_data = nullptr;
                return *this;
              }
              static size_t CCtor;
              static size_t MCtor;
              static size_t CAsgn;
              static size_t MAsgn;
              ~String() { delete[] m_data; }
              char* get_c_str() const { return m_data; }
              char& operator[](const int& n) { return m_data[n]; }
              friend int main();
            private:
              char* m_data;
            };
            
            size_t String::CCtor = 0;
            size_t String::MCtor = 0;
            size_t String::CAsgn = 0;
            size_t String::MAsgn = 0;
            
            int main()
            {
              std::vector<String> vec_str;
              vec_str.reserve(100);
              for(int i = 0; i < 100; i += 1)
                vec_str.push_back(String("Hello"));
              std::cout << String::CCtor << std::endl    // -> 0
                << String::MCtor << std::endl    // -> 1000
                << String::CAsgn << std::endl    // -> 0
                << String::MAsgn << std::endl;   // -> 0
            }
            ```

    - 移动赋值函数同理，用 `std::string` 类作为例子，语句 `std::string str_4(std::move(str_1));` 和 `str_6 = std::move(str_2);`,`str_1` 和 `str_2` 的值有变化，但直到作用域末尾才会被析构

        ```C++
        #include <string>
        int main()
        {
          std::string str_1("Hello");
          std::string str_2("World");
          std::string str_3(str_1);
          std::string str_4(std::move(str_1));
          std::string str_5, str_6;
          str_5 = str_2;
          str_6 = std::move(str_2);
        }
        ```

    - 完美转发

        - 函数在转发的时候，右值变成了左值，这是不完美转发

        - `std::forward<T>(T t)` 可以将右值转发给下一个函数，若和泛型编程的类型推断一同使用则可以同时转发左值和右值

            ```C++
            #include <iostream>
            #include <vector>
            
            void RunCode(int &&m)  { std::cout << "rvalue ref" << std::endl; }
            void RunCode(int &m)  { std::cout << "lvalue ref" << std::endl; }
            void RunCode(const int &&m)
            {
              std::cout << "const rvalue ref" << std::endl;
            }
            void RunCode(const int &m)
            {
              std::cout << "const lvalue ref" << std::endl;
            }
            template<typename T>
            void perfectForward(T&& t) { RunCode(std::forward<T>(t)); }
            template<typename T>void notPerfectForward(T&& t) { RunCode(t); }
            
            int main()
            {
              int a = 0;
              int b = 0;
              const int c = 0;
              const int d = 0;
              notPerfectForward(a);             // lvalue ref
              notPerfectForward(std::move(b));  // lvalue ref
              notPerfectForward(c);             // const lvalue ref
              notPerfectForward(std::move(d));  // const lvalue ref
              perfectForward(a);                // lvalue ref
              perfectForward(std::move(b));     // rvalue ref
              perfectForward(c);                // const lvalue ref
              perfectForward(std::move(d));     // const rvalue ref
            }
            ```

5. `const` 与指针

    - 指向 `const int` 的指针：
        - `const int*` → 指针指向可变，指针所指内容不可变
        - `int const*` → 指针指向可变，指针所指内容不可变
    - 指向 `int` 的 `const` 指针：
        - `int* const` → 指针指向不可变，指针所指内容可变
    - 两者结合（指向 `const int` 的 `const` 指针）：
        - `const int* const` → 指针指向不可变，指针所指内容不可变

6. `const` 与函数

    ```C++
    const std::string& Vector::function(const std::string&) const;
    ```

    考虑上例：

    - 左边的 `const`：返回值不能被修改；&指返回成员本身，可以做左值（不可以是临时变量，因为会被析构）
    - 中间的 `const`：实参在函数体内不能被修改；&指传入变量本身
    - 右边的 `const`：对象（`*this`）在函数运行过程中不会被修改

##### （二）类与继承

1. 基本函数

    - 下例是一个默认构造函数：

        ```C++
        Person(int a = 0, std::string n = "") : age(a), name(n) {}
        ```

    - 子类构造函数会先调用父类的对应默认构造函数（没有则合成一个），然后调用自己的默认构造

    - 现有默认构造，构造，复制构造，赋值函数：

        ```C++
        Vector();
        Vector(const string&);
        Vector(const Vector&);
        Vector& operator=(const Vector&);
        ```

        调用过程分别为

        ```C++
        Vector<int> v          // 1
        Vector<int> v("123")   // 2
        Vector<int> c = v      // 3
        Vector<int> c(v)       // 3
        v = c                  // 4
        Vector<int> v = "123"  // 2 3
        v = "123"              // 2 4
        ```

2. 虚函数
    1. 有一个纯虚函数的类为抽象类，虚基类指的是抽象基类
    2. 子类父类函数名和参数相同，且有 `virtual` → 覆盖 → 可以用动态绑定
        - 其余三种情况：参数不同/参数相同但没有 `virtual` → 隐藏 → 父类函数只能显式调用
    3. 只有父类指针指子类，且调用的函数有覆盖、能用才会有多态；其余情况一律变成静态绑定，没有显式说明只在类型所指定的位置找函数
    4. 有同名同参 `const` 函数的时候，非 `const` 成员优先调用非 `const` 函数，然后才会调用 `const` 函数

##### （三）变量类型

1. 按作用域区分
    - 局部变量：定义在函数内，默认为 `auto` 类型
    - 全局变量：定义在函数外，默认为 `extern` 类型
2. 按关键字区分
    - auto：`auto` 局部变量只能在函数中生效
    - register：建议 OS 把变量放入寄存器
    - extern：`extern` 函数与 `extern` 变量可以在所有文件使用函数或变量
    - static：`static` 函数与 `static` 全局变量只能在当前文件使用函数或变量，`static` 局部变量只能在函数中生效，只被初始化一次

##### （四）lambda 表达式

1. lambda 表达式的作用是提供一个没有名字的一次性函数，是纯右值

    ```C++
    [capture-list](params) -> ret { body }
    ```

2. lambda表达式的格式如上；其中，`params` 是参数列表，`ret` 是返回值类型，`body` 是函数体

    ```C++
    #include <iostream>
    #include <vector>
    #include <algorithm>
    
    int main()
    {
      std::vector<int> data;
      for (int i = 0; i < 10; i += 1)
        data.push_back(i);
      std::sort(data.begin(), data.end(),
                [](const int& left, const int& right)
                -> bool { return left > right; });
      for (int i = 0; i < data.size(); i += 1)
        std::cout << data[i] << " ";    // -> 9 8 7 6 5 4 3 2 1 0
      return 0;
    }
    ```

3. `capture-list` 是捕捉列表，它使这个匿名函数可以访问外部（父作用域）变量，捕捉方式有按值和按引用两种

    - `[a, &b]` 表示按值捕捉 `a`，按引用捕捉 `b`

    - `[&, a]` 表示按引用捕捉所有父作用域变量，除了 `a` 按值捕捉

    - `[=，&b]` 表示按值捕捉所有父作用域变量，除了 `b` 按引用捕捉

        ```C++
        #include <iostream>
        
        int main()
        {
          int num = 0;
          auto func_ptr = ([num]() -> void { std::cout << num << std::endl;});
          func_ptr();
          return 0;
        }
        ```

##### （五）大括号初始化

- 在C++11后，内置类型和 STL 的容器都可以采用大括号进行初始化，各种容器保持一致性

    ```C++
    #include <iostream>
    #include <set>
    #include <map>
    #include <list>
    #include <array>
    #include <string>
    #include <vector>
    #include <utility>
    
    int main()
    {
      int num = {0};
      int nums[] = {0, 1, 1};
      std::set<int> s = {0, 1, 2, 3, 4, 5};
      std::map<int, int> mapping = {{0, 0}, {1, -1}};
      std::list<int> l = {0, 1, 2, 3, 4, 5};
      std::array<int, 5> arr = {0, 1, 2, 3, 4};
      std::string str = {"01234"};
      std::string str_b = {'0', '1', '2', '3'};
      std::vector<int> vec = {0, 1, 2, 3, 4, 5};
      std::pair<int, int> p = {0, 1};
      return 0;
    }
    ```

##### （六）g++ 指令

1. 预处理与汇编
    - 用 `g++ -E h.cpp -o e.i` 生成预处理文件（删除注释，扩展宏，复制头文件），省略 `-o e.i` 时，会生成默认文件 `h.i`
    - 用 `g++ -S h.cpp -o e.s` 生成汇编指令，省略 `-o e.s` 时，会生成默认文件 `h.s`
2. 编译与链接
    - 用 `g++ -c h.cpp -o e.o` 生成未链接的机器码，省略 `-o e.o` 时，会生成默认文件 `h.o`
    - 用 `g++ h.cpp -o e` 生成最终经过链接的机器码，省略 `-o e` 时，会生成默认文件，windows下为 `a.exe`，Linux下为 `a.out`
    - 需要调试时，用 `-g` 命令生成项目 `g++ -g h.cpp -o e`，然后用指令 `gdb ./e` 进入调试模式
