#include <iostream>
using namespace std;

void swap(int& x, int& y){
  int temp = x;
  x = y;
  y = temp;
}

int main(void){

  int a, b;

  cout << "Input two integers:" << endl;
  cout << "a: "; cin >> a;
  cout << "b: "; cin >> b;

  swap(a, b);

  cout << "swap a and b." << endl;
  cout << "a: " << a << endl;
  cout << "b: " << b << endl;

  return (0);
}
