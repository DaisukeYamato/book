#include <iostream>
using namespace std;

int main() {
  int a, b;

  cout << "Input two integers > " << flush;
  cin >> a >> b;

  cout << "Bigger value is " << (a>b ? a : b) << "." << endl;
}
