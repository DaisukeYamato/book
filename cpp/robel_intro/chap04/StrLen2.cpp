#include <iostream>
using namespace std;

size_t StrLen(char* str){
  char* p;
  for(p = str; *p != '\0'; p++){
    // do nothing
  }
  return p - str;
}

void ShowLength(char* str){
  cout << "len(" << str << ") = "
       << StrLen(str) << " bytes." << endl;
}

int main() {
  ShowLength("Hello");
  ShowLength("");
}
