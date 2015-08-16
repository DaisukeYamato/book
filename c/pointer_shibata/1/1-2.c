#include <stdio.h>

int main(void){
  int nx;
  int *pt;

  nx = 57;
  pt = &nx;

  printf("nx: %d\n", nx);
  printf("&nx: %p\n", &nx);
  printf("pt: %p\n", pt);

  return (0);
}
