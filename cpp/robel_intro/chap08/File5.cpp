#include <fstream>
#include <cstdlib>
using namespace std;

const char SRC_NAME[] = "hello.txt";
const char DST_NAME[] = "hello2.txt";

const int BUF_SIZE = 1024;

int main() {
  fstream src;
  fstream dst;

  src.open(SRC_NAME, ios::in | ios::binary);
  if (!src.is_open()){
    return EXIT_FAILURE;
  }

  dst.open(DST_NAME, ios::out | ios::binary);
  if (!dst.is_open()){
    src.close();
    return EXIT_FAILURE;
  }

  do {
    char buf[BUF_SIZE];

    src.read(buf, sizeof buf);
    dst.write(buf, src.gcount());
  } while (!src.eof());

  dst.close();
  src.close();
}
