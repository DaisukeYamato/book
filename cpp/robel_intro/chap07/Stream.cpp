#include "Stream.h"
#include <iostream>
using namespace std;

// constructor
Stream::Stream() : m_n(-1) {
  // cout << "Stream" << endl;
  // m_n = -1;
}

// destructor
Stream::~Stream() {

}
// // constructor
// Stream::Stream(double n) {
//   m_n = n;
// }

// get value
double Stream::Get() const {
  return m_n;
}

// Set value
bool Stream::Set() {
  SetBase();
  return m_n >= 0;
}

// // base function
// void Stream::SetBase() {
//   cout << "Stream::SetBase" << endl;
//   m_n = -1;
// }
