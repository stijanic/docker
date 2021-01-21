#include <stdio.h>
#include <unistd.h>

// gcc -g tsc.c -o tsc && ./tsc

unsigned long rdtsc() {
	unsigned a, d;

	__asm__ volatile("rdtsc" : "=a" (a), "=d" (d));

	return (((unsigned long)a) | (((unsigned long)d) << 32));
}

int main(void) {
	unsigned long tsc_start, tsc_end;

	tsc_start = rdtsc();
	sleep(10);
	tsc_end = rdtsc();
	printf("In approximately 10 seconds, the TSC advanced by %lu\n",tsc_end-tsc_start);

	return (0);
}
