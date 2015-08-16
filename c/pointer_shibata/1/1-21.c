#include <stdio.h>

int main(void){
  double nx;
  double *pt = &nx;

  printf("Input real number: ");
  scanf("%lf", pt);

  printf("You entered %.2f.\n", *pt);

  return (0);
}
