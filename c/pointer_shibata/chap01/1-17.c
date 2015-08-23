#include <stdio.h>

void put_stars(int no){
  int i;

  for (i = 0; i<no; i++)
	putchar('*');
}

int main(void){
  int count;

  printf("# of stars: ");
  scanf("%d", &count);

  put_stars(count);

  printf("\n%d stars displayed.\n", count);

  return (0);
}
