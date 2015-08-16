#include <stdio.h>

int main(void){
  printf("char: %u byte(s).\n", (unsigned)sizeof(char));
  printf("int : %u byte(s).\n", (unsigned)sizeof(int));
  printf("long: %u byte(s).\n", (unsigned)sizeof(long));

  return (0);
}
