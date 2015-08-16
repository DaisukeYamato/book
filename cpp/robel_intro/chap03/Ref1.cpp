#include <iostream>
using namespace std;

void WesternToShouwa(int& x) {
  if (1926 <= x && x <= 1989) {
    x -= 1925;
  } else {
    x = 0;
  }
}

void Shouwa() {
  int year;

  cout << "Input western year > " << flush;
  cin >> year;

  WesternToShouwa(year);
  if (year != 0) {
    cout << "This year is shouwa " 
	 << year << "." << endl;
  } else {
    cout << "This year is not shouwa year." << endl;
  }
}

int main() {
  Shouwa();
  Shouwa();
}
