/*
  show array size declared w/ register
*/

#include <stdio.h>

int main(void) {
  register int x[5];

  printf("sizeof(x) = %u\n", (unsigned)sizeof(x));

  return (0);
}
