export module math;

import <concepts>;

template<typename T>
concept Addable = requires(T a, T b) {
    a + b;
    { a + b } -> std::same_as<T>;
};

export
template<typename T> requires Addable<T>
int add(T a, T b) {
  return a + b;
}

