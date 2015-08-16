#include "Debug.h"

#ifdef NDEBUG // release-time

#else // dubug-mode
#include <iostream>
#include <cstdlib>
using namespace std;

namespace Debug {
  void Assert(bool b, const char* file, int line) {
    if (b) {
      // this statement must be true always
    } else {
      // exit if there are bugs...
      cerr << file << '(' << line << "_"
	   << ": Assertion Error!" << endl;
      exit(EXIT_FAILURE);
    }
  }
}

#endif // #ifdef NDEBUG
