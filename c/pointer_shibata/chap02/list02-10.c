/* 
   show # of array elements 
*/

#include <stdio.h>

int main(void) {
  int x[5];

  printf("# of x = %d\n", (unsigned)(sizeof(x) / sizeof(x[0])));

  return (0);
}
