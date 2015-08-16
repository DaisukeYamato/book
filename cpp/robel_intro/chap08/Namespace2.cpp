#include <iostream>
using namespace std;

namespace Name1 {
  void Func() {
    cout << "Name1::Func" << endl;
  }
  void Hoge() {
    cout << "Name1::Hoge" << endl;
  }
}

namespace Name2 {
  void Func() {
    cout << "Name2::Func" << endl;
  }
}

using namespace Name1;

int main() {
  Func();
  Name2::Func();
  Hoge();
}
