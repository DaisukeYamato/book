#include <stdio.h>

void swap(int *x, int *y){
  int temp = *x;
  *x = *y;
  *y = temp;
}

void sort2(int *na, int *nb){
  if (*na > *nb){
	swap(na, nb);
  }
}

int main(void){
  int a, b;

  puts("Input two integers:");
  printf("a: "); scanf("%d", &a);
  printf("b: "); scanf("%d", &b);

  sort2(&a, &b);

  puts("sorted asc.");
  printf("a: %d\n", a);
  printf("b: %d\n", b);

  return (0);
}
