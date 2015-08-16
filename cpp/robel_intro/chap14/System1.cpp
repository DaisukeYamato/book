#include <iostream>
#include <cstdlib>
using namespace std;

#define CURRENT
// #ifdef WINDOWS
// #define CURRENT
// #else
// #define CURRENT "./"
// #endif

const char FILENAME[] = CURRENT "MAIN1";

int main() {
  if (system(FILENAME) == 0)  {
    cout << "program is executed correctly." << endl;
    return EXIT_SUCCESS;
  } else {
    cerr << "failed to execute!!" << endl;
    return EXIT_FAILURE;
  }
}
