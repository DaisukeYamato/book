#include <stdio.h>

int main(void){
  int i;
  long k;
  char s[20];

  printf("Input integer: ");
  scanf("%d", &i);

  printf("Input integer: ");
  scanf("%ld", &k);

  printf("Input string: ");
  scanf("%s", s);

  printf("i: %d\n", i);
  printf("k: %ld\n", k);
  printf("s: %s\n", s);

  return (0);
}
