#include <iostream>
using namespace std;

void Error() {
  int* p = NULL;

  try {
    p = new int[10];
    throw "Error occured!";
    delete[] p;
  } catch(const char* error) {
    cerr << "Memory is releasing..." << endl;
    delete[] p;
    throw error;
  }
}

int main() {
  try {
    Error();
  } catch(const char* error) {
    cerr << error << endl;
  }
}
