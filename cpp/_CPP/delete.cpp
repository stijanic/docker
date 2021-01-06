/*
 * delete.cc
 *
 *  Created on: Jan 4, 2021
 *      Author: stijanic
 */

#include "std_lib_facilities.h"
#include <new>

int main(void) {
	int *p;
	int *pa;

	try {
		p = new int; // allocate space for an int
		pa = new int[10]; // allocate spae for 10 ints
	} catch (bad_alloc &xa) {
		cout << "Allocation Failure\n";
		return 1;
	}

	*p = 100;
	cout << "At " << p << " ";
	cout << "is the value " << *p << endl;

	pa[0] = 10;
	cout << "At " << &pa[0] << " ";
	cout << "is the value " << *pa << endl;

	delete p; // Release the allocated memory
	delete[] pa; // Release the allocated array memory

	return (0);
}

