#include <iostream>
using namespace std;

// input function
//   true : input >= 0
//   false: input < 0
bool Input(double& n){
  cin >> n;
  return n >= 0;
}

// average
bool Average() {
  int count;
  double n;
  double avr = 0;

  for (count=0; Input(n); ++count){
    avr += n;
  }
  if (count == 0){
    return false;
  }

  avr /= count;
  cout << "Average: " << avr << endl;
  return true;
}

int main() {
  while (Average()){
    // do nothing
  }
}
