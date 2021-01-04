/*
 * heritage.cc
 *
 *  Created on: Jan 4, 2021
 *      Author: stijanic
 */

#include "std_lib_facilities.h"

using namespace std;

class B {
public:
	virtual ~B() {
		std::cout << "Destructing B" << std::endl;
	}
	virtual void who() { // specify a virtual function
		cout << "I am B" << endl;
	}
	;
};

class D1: public B {
public:
	~D1() {
		cout << "Destructing D1" << endl;
	}
	void who() { // redefine the virtual function
		cout << "I am D1" << endl;
	}
};

class D2: public B {
public:
	~D2() {
		cout << "Destructing D2" << endl;
	}
	void who() { // redefine the virtual function
		cout << "I am D2" << endl;
	}
};

int main(void) {
	B b;
	B *p;
	D1 d1;
	D2 d2;

	p = &b;
	p->who(); // access B's who()

	p = &d1;
	p->who(); // access D1's who()

	p = &d2;
	p->who(); // access D2's who()

	return (0);
}
