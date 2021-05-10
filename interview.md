## 数据结构

### 树

1.平衡二叉搜索树  
2.树的遍历

### 链表

## open source

### zookeeper

1.分布式锁实现  
2.使用的协议  

## system

### 编译

1.编译的过程  
2.动态链接和静态链接的区别  

### linux

1. & 和 &&  
2. 

### 内存

1. malloc() 内存申请 -> 元组 + 链表
2. 虚拟内存的组成
  - 用户栈（运行时创建）-> %rsp栈指针
  - 共享库内存映射区（虚地址）
  - 运行堆（malloc创建）
  - 读/写数据段（.data, .bss）-> 全局/静态
  - 只读数据段（.init .rodata）-> 常量 （maybe 虚表）
  - 只读代码段 (.text)
```c
用户栈（运行时创建） -> %rsp栈指针  
共享库内存映射区  
运行堆（malloc创建）  
读/写数据段（.data, .bss）  
只读代码段（.init, .text, .rodata） 
```

## c++

### stl相关
1. vector  
  - push_back vs emplace_back
  - push_back() 平均复杂度
  - resize 扩容复制 导致迭代器失效
2. string实现  
  - 使用引用传参的目的 -> 若非引用，那么会拷贝赋值，会陷入死循环，栈溢出  
  - 禁止用拷贝构造和赋值构造的原因
3. 删除
  - 关联容器 元素删除 -> 返回上一个移除的地方，删除后迭代器不动 if (ok) map.erase(iter++);
  - 连续内存 元素删除 -> 返回上一个移除的地方，且值都往前移动过 if (ok) iter = vector.erase(iter);

### 

### c11 之后
1. 智能指针实现  
4. lambda函数  
  - 设置为const的方法
  
## 算法

1. 求第n大数字 堆和快排  
  - `priority_queue<int, deque<int>, greater<int>> pq;`
2. 快排


## 第二次

1. 单核cpu有线程安全问题吗？
2. 虚表
  - 纯虚函数在虚表是什么样子的，进而导致子类必须继承
3. 智能指针 实现
4. 
