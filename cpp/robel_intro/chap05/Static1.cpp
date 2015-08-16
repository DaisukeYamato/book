#include <iostream>
#include <algorithm> // for fill_n
using namespace std;

// check for address consistency
void CheckAddress_Sub();
void CheckAddress_Sub2();

void CheckAddress() {
  cout << "check for address is static or not" << endl;

  CheckAddress_Sub();
  CheckAddress_Sub2();
  CheckAddress_Sub();
}

// output addresses for static variable a and dynamic variable b
void CheckAddress_Sub() {
  static int a;
  int        b;
  cout << "&a = " << (size_t) &a << endl
       << "&b = " << (size_t) &b << endl;
}

// Sub2 for calling Sub
void CheckAddress_Sub2(){
  cout << "in Sub2" << endl;
  CheckAddress_Sub();
}

// ----------------------------------------------------------
void CheckInitOnce_Sub();

void CheckInitOnce() {
  cout << endl << "check initialization is implemented once" << endl;

  CheckInitOnce_Sub();
  CheckInitOnce_Sub();
}

void CheckInitOnce_Sub(){
  static int a = 3;
  int        b = 3;
  cout << "a = " << a << endl
       << "b = " << b << endl;
  ++a;
  ++b;
}

//-----------------------------------------------------------
// check for 0 initialization
void CheckZeroInit_Sub();
void CheckZeroInit_Sub2();

void CheckZeroInit() {
  cout << endl << "check for 0 init or not" << endl;

  CheckZeroInit_Sub();
  CheckZeroInit_Sub2();
}

// check for static variable is what init?
void CheckZeroInit_Sub() {
  static int a, b, c, d;
  cout << a << "," << b << "," << c << "," << d << endl;
}

// check for dynamic variable
void CheckZeroInit_Sub2(){
  int a, b, c, d;
  cout << a << "," << b << "," << c << "," << d << endl;
}

//--------------------------------------------------
// check for value invariance
void CheckInvariant_Sub(int*& pa, int*& pb);
void CheckInvariant_Sub2();

void CheckInvariant() {
  cout << endl << "check for value invariance" << endl;

  int *pa, *pb;
  CheckInvariant_Sub(pa, pb);
  CheckInvariant_Sub2();
  // after CheckInvariant_Sub2()
  cout << "*pa = " << *pa << endl
       << "*pb = " << *pb << endl;
}

// int*& means int* referer
void CheckInvariant_Sub(int*& pa, int*& pb) {
  static int a = 9;
  int        b = 9;
  pa = &a;
  pb = &b;
}

//
void CheckInvariant_Sub2() {
  int dummy[100];
  fill_n(dummy, 100, 0);
}

//--------------------------------------------------
// main function
int main() {
  CheckAddress();
  CheckInitOnce();
  CheckZeroInit();
  CheckInvariant();
}
