#include <iostream>
#include <climits>
#include <typeinfo>
using namespace std;

template <typename TYPE>
class Limits {
public:
  static const TYPE MIN; // min
  static const TYPE MAX; // max
};

template <>
class Limits<unsigned short>{
public:
  static const unsigned short MIN = 0;
  static const unsigned short MAX = USHRT_MAX;
};

template <> const int Limits<int>::MIN = INT_MIN;
template <> const int Limits<int>::MAX = INT_MAX;

template <typename TYPE>
void ShowMinMax() {
  cout << "Type: " << typeid(TYPE).name() << endl
       << "  Min: " << Limits<TYPE>::MIN << endl
       << "  Max: " << Limits<TYPE>::MAX << endl;
}

int main() {
  ShowMinMax<unsigned short>();
  ShowMinMax<int>();
}
