#include <stdio.h>

int main(void){
  int nx = 15; 
  int ny = 73;
  
  printf("nx = %d\n", nx);
  printf("ny = %d\n", ny);

  printf("nx address: %p\n", &nx);
  printf("ny address: %p\n", &ny);
  
  return (0);
}
