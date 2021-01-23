#include <stdio.h>
 
// gcc -g -std=c99 -pedantic att.c -o att && ./att

int get_random(void) {
	__asm__("movl $42, %eax");
}

int main(void) {
	return printf("The answer is %d.\n", get_random());
}
