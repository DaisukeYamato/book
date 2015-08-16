#include <iostream>
using namespace std;

int main() {
  char c = '1';
  int i = 2;
  double d = 3;
  void* p;

  p = &c;
  cout << *p << ' ';

  p = &i;
  cout << *p << ' ';

  p = &d;
  cout << *p << endl;

}
