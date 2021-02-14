#include <iostream>
#include <complex>
#include <string>

using namespace std;

int main(void) {
  int a = 1, b = 2;
  string str1 = "Pera", str2 = "Marko";

  // g++ -std=c++11 lambda.cpp -o lambda => KO
  // g++ -std=c++14 lambda.cpp -o lambda => OK
  auto add = [](auto x, auto y) { return(x + y);};

  cout << add(a, b) << endl;
  cout << add(str1, str2) << endl;

  return(0);
}
