#ifndef ARRAYSTREAM_H_
#define ARRAYSTREAM_H_

#include "Stream.h"

// input from array
class ArrayStream : public Stream {
 public:
  ArrayStream(const double* array, int size);
  ~ArrayStream();

 protected:
  virtual void SetBase(); //

 private:
  double* m_array;
  int m_i;
 /* public: */
 /*  ArrayStream(const double* array); */
 /*  bool Set(); */

 /* private: */
 /*  const double* m_array; // array */
 /*  int    m_i; // current index */
};

#endif // ARRAYSTREAM_H_
