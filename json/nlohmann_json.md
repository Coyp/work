## get

### get_ref

1. number

```c++
json j = 1;
auto a_f = j.get_ref<const json::number_integer_t&>();
a_f = 3; // success

json j = 1;
auto a_f = j.get_ref<json::number_integer_t&>();
a_f = 3; // success
```

2. string

```c++
json j = "xx";
auto a_f = j.get_ref<const json::string_t&>();
a_f = "a"; // success

const json j = "xx";
auto a_f = j.get_ref<const json::string_t&>(); // ok

json j = "xx";
auto a_f = j.get_ref<const json::string_t&>(); // error
```
