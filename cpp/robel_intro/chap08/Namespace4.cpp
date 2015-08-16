#include <iostream>
using namespace std;

void Show() {
  cout << "Hello!"<< endl;
}

namespace MyProgram {
  void Show() {
    cout << "hello." << endl;
  }

  void Run() {
    Show();
  }
}

int main() {
  MyProgram::Run();
}
