/* 
   show size of array and pointer
*/

#include <stdio.h>

void func(int a[]){
  printf("sizeof(a) = %u\n", (unsigned)sizeof(a)); // pointer
}

int main(void) {
  int x[5];

  printf("sizeof(x) = %u\n", (unsigned)sizeof(x)); // array
  func(x);

  return(0);
}
