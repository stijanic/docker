#include <iostream>

// g++ -g gassaid.cpp gassaid.s -o gassaid && ./gassaid

using namespace std;

extern "C" int GetValueFromGAS();

int main(void) {
	cout << "GAS said: " << GetValueFromGAS() << endl;
	return (0);
}
