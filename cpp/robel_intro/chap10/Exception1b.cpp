#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
using namespace std;

const char* Run() {
  ifstream file;

  file.open("test.txt");
  if (!file.is_open()){
    return "cannot open file!!";
  }

  string line;
  getline(file, line);
  if (file.fail()){
    return "cannot read from file!!";
  }

  cout << line << endl;

  return NULL;
}

int main() {
  const char* error = Run();

  if (error != NULL) {
    cerr << error << endl;
    return EXIT_FAILURE;
  }
}

