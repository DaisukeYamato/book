#include <stdio.h>

int main(void){
  int nx, ny;
  int *p;

  p = &nx;
  *p = 100;

  p = &ny;
  *p = 300;

  printf("nx: %d\n", nx);
  printf("ny: %d\n", ny);

  return (0);
}
