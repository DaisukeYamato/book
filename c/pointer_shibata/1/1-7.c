#include <stdio.h>

int int_bits(void){
  int count = 0;
  unsigned x = ~0U;

  while (x){
	if (x & 1U) count++;
	x >>= 1;
  }
  return (count);
}

int main(void){
  printf("effective int: %d bits.\n", int_bits());

  return (0);
}
