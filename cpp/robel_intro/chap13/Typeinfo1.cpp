#include <iostream>
#include <fstream>
#include <sstream>
#include <typeinfo>
using namespace std;

void ShowType(const ostream& ostr){
  cout << typeid(ostr).name() << endl;
}

int main() {
  fstream fstr;
  ofstream ofstr;
  stringstream sstr;
  ostringstream osstr;

  ShowType(cout);
  ShowType(fstr);
  ShowType(ofstr);
  ShowType(sstr);
  ShowType(osstr);  
}
