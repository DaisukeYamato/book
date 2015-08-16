#include <iostream>
using namespace std;

bool IsDigit(char ch){
  return '0' <= ch && ch <= '9';
}

int main() {
  while(true){
    char ch;
    cout << "Input a character > " << flush;
    cin >> ch;
    if (ch == 'Q' || ch == 'q'){
      break;
    }
    if (IsDigit(ch)){
      cout << "a number." << endl;
    } else {
      cout << "not a number." << endl;
    }
  }
  cout << "quitting..." << endl;
}
