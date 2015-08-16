#include <iostream>
#include <cassert>
using namespace std;

// get array size
#define ARRAY_SIZE(array) (sizeof (array) / sizeof *(array))

// functions
int Add(int a, int b) { return a + b; }
int Sub(int a, int b) { return a - b; }
int Mul(int a, int b) { return a * b; }
int Div(int a, int b) { return a / b; }

// functional pointer
int (*const FP_OPERATOR[])(int a, int b) = {
  Add, Sub, Mul, Div
};

// names
const char* const OPERATION_NAME [] = {
  "ADD", "SUB", "MUL", "DIV"
};

// class
class Calculator {
public:
  void Run();

private:
  bool Input();
  void Calculate();

private:
  int m_a, m_b;
};

void Calculator::Run() {
  while ( Input() ) {
    Calculate();
  }
}

// input
bool Calculator::Input() {
  cout << "Input two integers > " << flush;
  m_b = 0;
  cin >> m_a >> m_b;
  return m_b != 0;
}

void Calculator::Calculate() {
  static const size_t SIZE = ARRAY_SIZE(FP_OPERATOR);
  assert (SIZE == ARRAY_SIZE(OPERATION_NAME));

  for (size_t i=0; i<SIZE; ++i) {
    int result = FP_OPERATOR[i](m_a, m_b);
    cout << OPERATION_NAME[i] << ": " << result << endl;
  }
}

int main() {
  Calculator calc;
  calc.Run();
}
