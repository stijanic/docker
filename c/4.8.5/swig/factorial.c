#include "factorial.h"
long factorial(long n) {
  if (n < 0) {       /* This should probably return an error, but this is simpler */
    return 0;
  }
  if (n == 0) {
      return 1;
  } else {
    /* testing for overflow would be a good idea here */
    return n * factorial(n - 1);
  }
}
