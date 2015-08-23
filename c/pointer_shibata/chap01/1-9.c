#include <stdio.h>

int main(void){
  int nx = 100;
  int ny = 200;
  int *px = &nx;
  int *py = &ny;

  printf("nx: %d\n", nx);
  printf("ny: %d\n", ny);
  printf("*px: %d\n", *px);
  printf("*py: %d\n", *py);

  return (0);
}
