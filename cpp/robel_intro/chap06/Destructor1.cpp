#include <iostream>
#include <cstdlib>
#include <cstring>
using namespace std;

class IntArray {
public:
  // constructor, destructor
  IntArray(int size);
  ~IntArray();
  
  // access function for member variables
  int Get(int i);
  void Set(int i, int value);

private:
  // check index
  void CheckIndex(int i);

private:
  int* m_array; // dynamic array
  int m_size;   // # of elements
};

// constructor
IntArray::IntArray(int size) {
  m_array = new int[size];
  m_size = size;

  cout << "constructor called."
       << " # of elements: " << m_size << "." << endl;
}

// destructor
IntArray::~IntArray() {
  delete[] m_array;

  cout << "destructor called. "
       << "# of elements was " << m_size << "." << endl;
}

// access function
int IntArray::Get(int i){
  CheckIndex(i);
  return m_array[i];
}

void IntArray::Set(int i, int value){
  CheckIndex(i);
  m_array[i] = value;
}

// check index
void IntArray::CheckIndex(int i){
  if (0<=i && i<m_size){
    // index is OK.
  } else {
    cout << "index is invalid!" << endl
	 << "value: " << i << endl;
    exit(EXIT_FAILURE);
  }
}

void Viss(int num){
  cout << "Viss : No." << num << endl;
}

IntArray a(10);

int main() {
  Viss(1);

  IntArray b(20);
  Viss(2);

  IntArray c(30);
  Viss(3);
  {
    IntArray d(40);
    Viss(4);
  }
  Viss(5);
}
