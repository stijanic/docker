#include <stdio.h>
#include <time.h>

int main(void) {

	time_t biggest = 0x7FFFFFFF;

	printf("biggest = %s \n", asctime(gmtime(&biggest)));

	return (0);
}
