#include <iostream>
#include <fstream>
#include <cstdlib>
using namespace std;

const int PAGE_WIDTH = 16;
const int PAGE_HEIGHT = 16;
const int PAGE_SIZE = PAGE_WIDTH * PAGE_HEIGHT;

class DumpFile {
public:
  bool Run(); // run

private:
  bool Open();
  void Close();
  void Dump();
  bool Control();

private:
  fstream m_file; // file
  int m_page; // current page
};

int main() {
  DumpFile dump;

  if (! dump.Run()) {
    return EXIT_FAILURE;
  }
}

//=========================================================
// class DumpFile
//=========================================================
//---------------------------------------------------------
// run
bool DumpFile::Run() {
  if (! Open()) {
    return false;
  }
  do {
    Dump();
  } while (Control());

  Close();

  return true;
}

//---------------------------------------------------------
// open file
bool DumpFile::Open() {
  string filename;

  cout << "Filename > " << flush;
  getline(cin, filename);

  m_file.open(filename.c_str(), ios::in | ios::binary);
  m_page = 0;

  return m_file.is_open();
}

//---------------------------------------------------------
// close file
void DumpFile::Close() {
  m_file.close();
}

//---------------------------------------------------------
// dump 1 page
void DumpFile::Dump() {
  cout << endl;

  m_file.clear();
  m_file.seekg(m_page * PAGE_SIZE);

  for (int h=0; h<PAGE_HEIGHT; h++){
    unsigned char buf[PAGE_WIDTH];

    m_file.read((char*)buf, sizeof buf);

    for (int w=0, size=m_file.gcount(); w<size; w++){
      printf("%02X ", buf[w]);
    }
    cout << endl;
  }
}

//---------------------------------------------------------
// control
bool DumpFile::Control() {
  while(true){
    string command;

    cout << "command? (n: next, p: previos, q: quit) > " << flush;
    getline(cin, command);

    if (command == "n"){
      // next if the current page is the last page
      if ( !m_file.eof() ){
	m_page++;
	return true;
      } else {
	// retry command
      }
    } else if (command == "p") {
      // previous if the current page is the first page
      if ( m_page > 0 ){
        m_page--;
	return true;
      } else {
	// retry command
      }
    } else if (command == "q") {
      // finish
      return false;
    }
  }
}
