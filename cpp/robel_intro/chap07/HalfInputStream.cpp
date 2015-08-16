#include "HalfInputStream.h"
//#include <iostream>
//using namespace std;

// basic funtion
void HalfInputStream::SetBase() {
  InputStream::SetBase();
  m_n /= 2;
}
