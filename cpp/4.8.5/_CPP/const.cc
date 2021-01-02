#include "std_lib_facilities.h"

void use(int n) {
	constexpr int max = 100;
	constexpr int c1 = max + 7;
	const int c2 = n + 7;

	// error: c2 = 7;

	cout << "c1 == " << c1 << "\n";
	cout << "c2 == " << c2 << "\n";
}

int main() {
	constexpr double pi = 3.14159;

	cout << "pi == " << pi << "\n";
	cout << "round(pi) == " << round(pi) << "\n";
	use(round(pi));
}
