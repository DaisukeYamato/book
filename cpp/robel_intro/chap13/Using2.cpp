#include <iostream>

namespace Hoge {
  using namespace std;

  void Hello() {
    cout << "hello." << endl;
  }
}

int main() {
  Hoge::Hello();
}
