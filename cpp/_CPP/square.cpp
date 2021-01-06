// include (‘‘import’’) the declarations for the I/O stream librar y
#include <iostream>

// make names from std visible without std:: (§3.4)
using namespace std;

// square a double precision floating-point number
double square(double x) {
	return (x * x);
}

void print_square(double x) {
	cout << "the square of " << x << " is " << square(x) << "\n";
}

int main(void) {
	print_square(1.234);

	return (0);
}
