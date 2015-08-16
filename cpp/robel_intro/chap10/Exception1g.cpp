#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
using namespace std;

// open file
void Open(ifstream& file, const char* filename) {
  file.open(filename);
  if (!file.is_open()) {
    throw 1;
  }
}

void GetLine(ifstream& file, string& line) {
  getline(file, line);
  if(file.fail()) {
    throw "cannot read from file!!";
  }
}

int main() {
  try {
    ifstream file;
    Open(file, "test.txt");

    string line;
    GetLine(file, line);
    cout << line << endl;
  } catch(const char* error) {
    cerr << error << endl;
    return EXIT_FAILURE;
  } catch(int error) {
    cerr << "cannot open file!!";
    return EXIT_FAILURE;
  }
}
