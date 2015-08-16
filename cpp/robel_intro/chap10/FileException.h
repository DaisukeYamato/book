#ifndef FILEEXCEPTION_H_
#define FILEEXCEPTION_H_

#include "Exception.h"
#include <string>

class FileException : public Exception {
 public:
  FileException(const char* error);
  virtual const char* What() const; // state

 protected:
  std::string m_error; // error message
};

//------------------------------------------------
// class OpenFileException
//------------------------------------------------
class OpenFileException : public FileException {
 public:
  OpenFileException(const char* filename);
};
//------------------------------------------------
// class ReadFileException
//------------------------------------------------
class ReadFileException : public FileException {
 public:
  ReadFileException();
};

#endif // FILEEXCEPTION_H_
