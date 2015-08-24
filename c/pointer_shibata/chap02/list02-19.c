/* 
   linear search
*/

#include <stdio.h>

/*-- linear search for no in array x upto n elements --*/
int seq_search(int *x, int n, int no) {
  int i;
  for (i=0; i<n; i++) {
    if (*x++ == no) {
      return i;
    }
  }
  return (-1);
}

int main(void) {
  int i, no, idx;
  int a[8];
  int a_size = sizeof(a) / sizeof(a[0]);

  for (i=0; i<a_size; i++) {
    printf("a[%d]:", i);
    scanf("%d", &a[i]);
  }
  printf("search value:");
  scanf("%d", &no);

  if ( (idx = seq_search(a, a_size, no)) != -1 )
    printf("Found: a[%d]\n", idx);
  else
    puts("Not found...");

  return (0);
}
