#include <stdio.h>

// gcc -g -masm=intel intel.c -o intel && ./intel

int get_random(void) {
	__asm__(".intel_syntax noprefix\n"
		"mov eax, 42\n");
}

int main(void) {
	return printf("The answer is %d.\n", get_random());
}
