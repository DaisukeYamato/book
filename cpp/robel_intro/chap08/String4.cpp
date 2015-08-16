#include <iostream>
#include <string>
using namespace std;

int main() {
  while(true) {
    string line;

    cout << "Input some statement. > " << flush;
    getline(cin, line);
    if (line == "quit") {
      break;
    }

    string::size_type pos = line.rfind(".");
    if (pos == string::npos) {
      line += "(end.)";
    } else {
      line.insert(pos, "(end.)");
    }

    cout << line << endl;
  }
}
