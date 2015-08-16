#ifndef INPUTSTREAM_H_
#define INPUTSTREAM_H_

#include "Stream.h"

// class (InputStream) 
class InputStream : public Stream {
 public:
  //InputStream(double n); // constructor
  InputStream(); // constructor
  
 protected:
  virtual void SetBase();
  //public:
  //bool Set(); // Input function
};

#endif // INPUTSTREAM_H_
