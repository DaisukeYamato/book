#include <stdio.h>

int main(void){
  int nx;
  int *pt;

  nx = 57;
  pt = &nx;

  printf("nx: %d\n", nx);
  printf("*pt: %d\n", *pt);

  return(0);
}
