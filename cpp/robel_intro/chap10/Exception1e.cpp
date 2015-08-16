#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
using namespace std;

int main() {
  try {
    ifstream file;

    file.open("text.txt");
    if(!file.is_open()) {
      throw "cannot open file!!";
    }
    
    string line;
    getline(file, line);
    if (file.fail()) {
      throw "cannot read from file!!";
    }

    cout << line << endl;
    
  } catch(const char* error) {
    cerr << error << endl;
    return EXIT_FAILURE;
  }
}
