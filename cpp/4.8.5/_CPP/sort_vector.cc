#include "std_lib_facilities.h"

int main() {
	vector<int> v = { 5, 7, 9, 4, 6, 8 };

	cout << "v.size() == " << v.size() << " : ";

	for (int x : v) // for each x in v
		cout << x << ", ";
	cout << '\n';

	v.push_back(1);

	cout << "v.size() == " << v.size() << " : ";

	for (long unsigned int i = 0; i < v.size(); ++i) {
		cout << v[i];
		if (i < v.size() - 1)
			cout  << ", ";
	}
	cout << '\n';

	// compute mean temperature:
	double sum = 0;
	for (double x : v) sum += x;
	cout << "Average temperature: " << sum/v.size() << '\n';
	// compute median temperature:
	sort(v);
	// sort temperatures
	cout << "Median temperature: " << v[v.size()/2] << '\n';
}
