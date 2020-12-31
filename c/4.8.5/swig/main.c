#include <stdio.h>
#include "factorial.h"

int main(void) {
  int i = 0;

  for (i = 0; i < 9000000; i++) {
    (void) factorial(20);
//    printf("Factorial of %i is: %lu\n", i, factorial(20));
  }

  printf("%d\n", i);

  return (0);
}
