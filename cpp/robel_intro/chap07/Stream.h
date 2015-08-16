#ifndef STREAM_H_
#define STREAM_H_

// base class
class Stream {
 public:
  //Stream(double n);
  Stream(); // constructor
  virtual ~Stream();
  
  double Get() const; // get value
  virtual bool Set();
  
 protected:
  virtual void SetBase() = 0; // base function for setting value
  double m_n; // current value
};

#endif // STREAM_H_
