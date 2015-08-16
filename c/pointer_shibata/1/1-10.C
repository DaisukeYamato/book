#include <iostream>
using namespace std;

int main(void){
  int nx = 100;
  int ny = 200;
  int* px = &nx;
  int* py = &ny;

  cout << "nx: " << nx << endl;
  cout << "ny: " << ny << endl;
  cout << "*px: " << *px << endl;
  cout << "*py: " << *py << endl;
  
  return (0);
}
