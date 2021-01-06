/*
 * template.cc
 *
 *  Created on: Jan 4, 2021
 *      Author: stijanic
 */

#include "std_lib_facilities.h"

template<class Type1, class Type2> void my_func(Type1 x, Type2 y) { // generic function
	cout << x << ' ' << y << endl;
}

template<class T> class TemplateClass { // generic class
private:
	T x, y;

public:
	TemplateClass(T x, T y) {
		this->x = x;
		this->y = y;
	}

	T div() {
		return (x / y);
	}

	void print(void) {
		cout << this->x << ' ' << this->y << endl;
	}
};

template <> class TemplateClass<string> { // specialized class for strings
private:
	string c;
public:
	TemplateClass(string c, string d) {
		this->c = c + ' ' + d;

		cout << "Specialization constructing..." << endl;
	}

	string div() {
		return "No way!";
	}

	void print(void) {
		cout << this->c << endl;
	}
};

int main(void) {
	my_func(10, "hi");
	my_func(0.23, 10L);

	TemplateClass<double> d(10.1, 3.03); // create a version of TemplateClass for doubles
	d.print();
	cout << d.div() << endl;

	TemplateClass<int> i(10.2, 3.1); // create a version of TemplateClass for ints
	i.print();
	cout << i.div() << endl;

	TemplateClass<string> c("Hello", "World"); // create a version of specialized TemplateClass for strings
	c.print();
	cout << c.div() << endl; // it would be a big error but now no more since we are specialized

	return (0);
}
