#include <iostream>
using namespace std;

void Error() {
  int* p = NULL;

  try {
    p = new int[10];
    throw "error occured!";
    delete[] p;
  } catch(...) {
    cerr << "memory is releasing..." << endl;
    delete[] p;
    throw;
  }
}

int main() {
  try {
    Error();
  } catch(const char* error) {
    cerr << error << endl;
  }
}
