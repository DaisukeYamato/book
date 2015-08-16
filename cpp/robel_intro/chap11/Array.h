#ifndef ARRAY_H_
#define ARRAY_H_

#include <iostream>
#include <algorithm>
#include <cstdlib>
#include <stdexcept>

template <typename TYPE>
class Array {
 public:
  Array(int size);
  Array(const Array& other);
  Error();

 private:
  const int m_size;
};

#endif // ARRAY_H_
