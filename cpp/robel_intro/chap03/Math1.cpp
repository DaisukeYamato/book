#include <iostream>
#include <cmath>
using namespace std;

int main() {
  double a, b;

  cout << "Input two lengths for triangle > " << flush;
  cin >> a >> b;

  cout << "c: " << sqrt(a * a + b * b) << endl;
}
