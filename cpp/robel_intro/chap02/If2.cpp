#include <iostream>
using namespace std;

void Divide() {
  int a, b;

  cout << "Input first value: " << flush;
  cin >> a;

  cout << "Input second value: " << flush;
  cin >> b;

  if (b == 0) {
    cout << "Cannot divide by 0!" << endl;
  }
  else {
    cout << a << " / " << b << " = "
	 << a / b << " ..." << a % b << endl;
  }
}

int main(){
  Divide();
  Divide();
}
