#include <iostream>
#include <cstddef>
using namespace std;

struct Person {
  char name[21];
  int age;
  char birthmonth;
  char sex;
};

int main() {
  cout << "      name : " << offsetof(Person, name) << endl
       << "       age : " << offsetof(Person, age) << endl
       << "birthmonth : " << offsetof(Person, birthmonth) << endl
       << "       sex : " << offsetof(Person, sex) << endl
       << "      size : " << sizeof(Person) << endl;
}
