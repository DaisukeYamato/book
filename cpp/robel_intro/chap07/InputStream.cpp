#include "InputStream.h"
#include <iostream>
using namespace std;


// constructor
InputStream::InputStream() {
  cout << "InputStream" << endl;
}

// // constructor
// InputStream::InputStream(double n)
//   : Stream(n) {
// }

// base function
void InputStream::SetBase() {
  cin >> m_n;
}

// // Input
// bool InputStream::Set() {
//   cin >> m_n;
//   return m_n >= 0;
// }

