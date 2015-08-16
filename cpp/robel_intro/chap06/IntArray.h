#ifndef INTARRAY_H_20070101_1529_80AHFDJI_INCLUDED_
#define INTARRAY_H_20070101_1529_80AHFDJI_INCLUDED_

class IntArray {
 public:
  // constructor, destructor
  IntArray(int size);
  ~IntArray();
  IntArray(const IntArray& other); // copy constructor
  
  // overload = operator
  void operator=(const IntArray& other);
  
  // access function for member variables
  int Get(int i);
  int Get(int i) const;
  void Set(int i, int value);
  //inline int Size() { return m_size; }
  int Size() const; 

  
 private:
  // check index
  void CheckIndex(int i) const;

 private:
  int* m_array; // dynamic array
  int m_size;   // # of elements
  
};
#endif // INTARRAY_H_20070101_1529_80AHFDJI_INCLUDED_
