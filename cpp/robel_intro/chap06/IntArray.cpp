#include "IntArray.h"
#include <iostream>
#include <algorithm>
#include <cstdlib>
using namespace std;

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
//-------------------------------------------------------------
// copy constructor
IntArray::IntArray(const IntArray& other){
  m_array = new int[other.m_size];
  m_size  = other.m_size;

  // copy is just function for copying memory contexts
  copy(other.m_array, other.m_array + m_size, m_array);

  cout << "called copy constructor." << endl;
}
//-------------------------------------------------------------
// operator = overload
void IntArray::operator=(const IntArray& other){
  int* array = new int[other.m_size];

  delete[] m_array;
  m_array = array;
  m_size = other.m_size;
  copy(other.m_array, other.m_array + m_size, m_array);
}
//-------------------------------------------------------------
// access function
int IntArray::Get(int i) {
  CheckIndex(i);
  return m_array[i];
}
//-------------------------------------------------------------
// access function
int IntArray::Get(int i) const {
  CheckIndex(i);
  return m_array[i];
}
//-------------------------------------------------------------
void IntArray::Set(int i, int value){
  CheckIndex(i);
  m_array[i] = value;
}
//-------------------------------------------------------------
// check index
void IntArray::CheckIndex(int i) const {
  if (0<=i && i<m_size){
    // index is OK.
  } else {
    cout << "index is invalid!" << endl
	 << "value: " << i << endl;
    exit(EXIT_FAILURE);
  }
}
//-------------------------------------------------------------
int IntArray::Size() const {
  return m_size;
}

