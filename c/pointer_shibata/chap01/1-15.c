#include <stdio.h>

void swap(int *x, int *y){
  int temp = *x;
  *x = *y;
  *y = temp;
}

int main(void){
  int a, b;

  puts("Input two integers:");
  printf("a: "); scanf("%d", &a);
  printf("b: "); scanf("%d", &b);

  swap(&a, &b);

  puts("swap a and b.");
  printf("a: %d\n", a);
  printf("b: %d\n", b);

  return (0);
}
