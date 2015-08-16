#include <iostream>
using namespace std;

void BirthMonth() {
  int month;

  cout << "What is your birth month?" << flush;
  cin >> month;

  if (1 <= month && month <= 12) {
    cout << "Your birth month is " << month << "." 
	 << endl;
  }
  else {
    cout << month << " ?! not exist!!!" 
	 << endl;
  }
}

int main() {
  BirthMonth();
  BirthMonth();
}
