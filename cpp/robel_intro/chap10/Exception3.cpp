#include <iostream>
using namespace std;

void Error() {
  try {
    throw 1;
  } catch(int error) {
    throw "Error";
  } catch(const char* error) {
    cerr << "This catch???" << endl;
  }
}

int main() {
  try {
    Error();
  } catch(const char* error) {
    cerr << "This 2 catch??" << endl;
  }
}
