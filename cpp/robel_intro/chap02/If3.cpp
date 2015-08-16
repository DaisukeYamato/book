#include <iostream>
using namespace std;

// Seireki -> Showa 
// invalid value return 0
int WesternToShouwa(int western){
  if (1926 <= western && western <= 1989) {
    return western - 1925;
  }
  else {
    return 0;
  }
}

void Shouwa(){
  int western;

  cout << "Input western year > " << flush;
  cin >> western;

  int shouwa = WesternToShouwa(western);
  if (shouwa == 0) {
    cout << "The year is not shouwa." << endl;
  } else {
    cout << "The year is shouwa " << shouwa << "." << endl;
  }
}

int main() {
  Shouwa();
  Shouwa();
}
