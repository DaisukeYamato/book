#include <iostream>
using namespace std;

const char* const MONTH_NAME[] = {
  "Jan", "Feb", "Mar", "Apr", "May", "Jun"
  , "Jul", "Aug", "Sep", "Oct", "Nov", "Dec",
};

const char* GetOldMonthName(int month) {
  if (1 <= month && month <= 12) {
    return MONTH_NAME[month - 1];
  }
  return 0;
}

int main() {
  int month;

  cout << "Input current month > " << flush;
  cin >> month;

  const char* name = GetOldMonthName(month);
  if (name == 0) {
    cout << "not exist such a month." << endl;
  } else {
    cout << name << endl;
  }
}
