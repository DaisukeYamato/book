#ifndef HALFINPUTSTREAM_H_
#define HALFINPUTSTREAM_H_

#include "InputStream.h"

// class
class HalfInputStream : public InputStream {
 protected:
  virtual void SetBase(); // base function for getting value
};

#endif // HALFINPUTSTREAM_H_
