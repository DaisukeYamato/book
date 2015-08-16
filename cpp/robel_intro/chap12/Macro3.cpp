#include <iostream>
#include <fstream>
#include <cstdlib>
using namespace std;

const char* Open(ifstream& file, const char* filename){
  file.open(filename);
  return file.is_open() ? NULL : "cannot open file!!";
}

const char* GetLine(ifstream& file, string& line){
  getline(file, line);
  return file.fail() ? "cannot read from file!!" : NULL;
}

int main() {
  const char* error = NULL;

  ifstream file;
  string line;

  error = Open(file, "test.txt");
  if(error != NULL){
    goto ON_ERROR;
  }
  error = GetLine(file, line);
  if(error != NULL){
    goto ON_ERROR;
  }
  cout << line << endl;

  return EXIT_SUCCESS;

 ON_ERROR:
  cerr << error << endl;
  return EXIT_FAILURE;
}
