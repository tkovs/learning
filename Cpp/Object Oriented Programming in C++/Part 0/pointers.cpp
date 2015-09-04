#include <iostream>

using namespace std;

int main(void)
{
	int *p, x;

	x = 10;
	p = &x;

	cout << "x... " << x << endl;
	cout << "p... " << p << endl;
	cout << "&x.. " << &x << endl;
	cout << "*p.. " << *p << endl;
	cout << "&p.. " << &p << endl;

	return 0;
}