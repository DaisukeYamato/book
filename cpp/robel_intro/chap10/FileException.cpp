#include "FileException.h"

FileException::FileException(const char* error)
  : m_error(error) {
}

// What
const char* FileException::What() const {
  return m_error.c_str();
}

//------------------------------------------------------
// class OpenFileException
//------------------------------------------------------
OpenFileException::OpenFileException(const char* filename)
  : FileException("cannot open file!!") {
  m_error += "\nfilename: ";
  m_error += filename;
}

//------------------------------------------------------
// class ReadFileException
//------------------------------------------------------
ReadFileException::ReadFileException() :
  FileException("cannot read from file!!") {

}
