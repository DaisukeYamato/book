#include <iostream>
using namespace std;

int Abs(int a){
  if (a < 0){
    return -a;
  } else {
    return a;
  }
}

double Abs(double a){
  if (a < 0) {
    return -a;
  } else {
    return a;
  }
}

// Input
int Input(int& i, double& d){
  cout << "Input an integer > " << flush;
  cin >> i;
  if (i == 0) {
    return 0;
  }

  cout << "Input a numeric > " << flush;
  cin >> d;
  if (d == 0) {
    return 0;
  }

  return 1;
}

// Show Abs
void ShowAbs(int i, double d){
  cout << "Abs(" << i << ") = " << Abs(i) << endl
       << "Abs(" << d << ") = " << Abs(d) << endl;
}

int main() {
  int i;
  double d;

  while (Input(i, d) != 0){
    ShowAbs(i, d);
  }
}
