#include <iostream>
using namespace std;

size_t StrLen(char* str){
  int i;
  for(i = 0; *(str + i) != '\0'; i++){
    // do nothing
  }
  return i;
}

void ShowLength(char* str){
  cout << "len(" << str << ") = "
       << StrLen(str) << " bytes." << endl;
}

int main() {
  ShowLength("Hello");
  ShowLength("");
}
