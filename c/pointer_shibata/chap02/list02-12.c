/* 
   error: get address w/ register
*/

#include <stdio.h>

int main(void) {
  register int x[5];

  printf("x[0] = %d\n", x[0]);

  return (0);
}
