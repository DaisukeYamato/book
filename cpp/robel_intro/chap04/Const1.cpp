#include <iostream>
using namespace std;

int StrCount(const char* str, char ch){
  int num = 0;
  for (int i = 0; str[i] != '\0'; i++){
    if (str[i] = ch){
      ++num;
    }
  }
  return num;
}

int main() {
  char path[] = "/home/robert/documents/const.txt";

  cout << "File " << path << "is "
       << StrCount(path, '/')
       << " '/' depth." << endl;
}
