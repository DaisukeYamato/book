#include <stdio.h>

int main(void){
  int nx;
  int *pt;

  printf("int: %u byte(s).\n", (unsigned)sizeof(int));
  printf("int *: %u byte(s).\n", (unsigned)sizeof(int *));

  printf(" nx: %u byte(s).\n", (unsigned)sizeof(nx));
  printf("*pt: %u byte(s).\n", (unsigned)sizeof(*pt));
  printf(" pt: %u byte(s).\n", (unsigned)sizeof(pt));
  printf("&nx: %u byte(s).\n", (unsigned)sizeof(&nx));
  
  return (0);
}
