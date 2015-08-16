#include <stdio.h>

void swap(int *x, int *y){
  int temp = *x;
  *x = *y;
  *y = temp;
}

int main(void){
  double a, b;

  puts("Input two reals.");
  printf("a: "); scanf("%lf", &a);
  printf("b: "); scanf("%lf", &b);

  swap(&a, &b);

  puts("swap a and b.");
  printf("a: %f.\n", a);
  printf("b: %f.\n", b);

  return (0);
}
