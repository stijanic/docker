/*
 * object_pointer.cc
 *
 *  Created on: Jan 4, 2021
 *      Author: stijanic
 */

#include <iostream>

using namespace std;

class TestObject {
	int value;
public:
	int getValue() const {
		return value;
	}

	void setValue(int value) {
		this->value = value;
	}

	void showValue() {
		cout << value << endl;
	}
};

int main(void) {
	TestObject to[2], *p; // declare an array of objects and a pointer to that same class

	to[0].setValue(1); // call function directly on to[0]
	to[0].showValue();

	to[1].setValue(2);
	to[1].showValue();

	p = &to[0]; // assign p the address of to[0]
	p->setValue(20); // call functions through a pointer to to
	p->showValue();

	p++; // advance to next object in array: to[1]
	p->showValue();

	p--; // retreat to previous object in array: to[0]
	p->showValue();

	return 0;
}
