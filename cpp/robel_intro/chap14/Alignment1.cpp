#include <iostream>
using namespace std;

struct Person {
  char name[21]; // name
  int  age;
  char birthmonth;
  char sex;
};

int main() {
  cout << sizeof (Person) << endl;
}
