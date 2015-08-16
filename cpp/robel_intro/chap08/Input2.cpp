#include <iostream>
#include <cstdlib>
using namespace std;

bool SkipOnError(istream& istr){
  if (istr.fail()){
    if (istr.eof()){
      exit(EXIT_FAILURE);
    }

    // skip one character
    char ch;
    istr.clear();
    istr >> ch;
    return true;
  } else {
    return false;
  }
}

int main() {
  int n;

  do {
    cin >> n;
  } while(SkipOnError(cin));

  cout << "Input value: " << n << endl;
}
