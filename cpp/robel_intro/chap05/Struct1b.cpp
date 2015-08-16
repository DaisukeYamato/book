#include <iostream>
using namespace std;

const int MAX_NAME = 16;

struct Student {
  char name[MAX_NAME + 1];
  int scoreJapanese;
  int scoreMath;
  int scoreEnglish;
};

void Show(const Student* pointer){
  cout << "name : " << (*pointer).name  << endl
       << "  Japanese: " << (*pointer).scoreJapanese << " points"
       << ", Math: " << (*pointer).scoreMath << " points"
       << ", English: " << (*pointer).scoreEnglish << " points" << endl;
}

int main() {
  Student student[] = {
    { "akai",   73, 98, 86, },
    { "kasai",  64, 45, 40, },
    { "yoshida",76, 78, 69, },
  };
  int size = sizeof student / sizeof *student;

  for (int i=0; i<size; i++){
    Show(&student[i]);
  }
}
