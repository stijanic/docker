// include (‘‘import’’) the declarations for the I/O stream librar y
//#include <iostream>
#include <vector>
#include "std_lib_facilities.h"

// make names from std visible without std:: (§3.4)
using namespace std;

double d1 = 2.3;
double d2 { 2.3 };
double d3 = { 2.3 };
string motto { "Who dares wins" };
vector<double> v {1.2, 3.4, 4.5};

int main() {
	cout << "bool " << sizeof(bool) << "\n";
	cout << "char " << sizeof(char) << "\n";
	cout << "int " << sizeof(int) << "\n";
	cout << "double " << sizeof(double) << "\n";
	cout << "unsigned " << sizeof(unsigned) << "\n";
	cout << "string " << sizeof(string) << "\n";
	cout << d1 + d2 + d3 << "\n";
	cout << "vector " << v[0] << " " << v[1] << " " << v[2] << endl;
	keep_window_open();	// wait for a character to be entered
}
