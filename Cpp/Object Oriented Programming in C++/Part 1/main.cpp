#include <iostream>
#include "dog.h"

using namespace std;

int main(void)
{
	Dog dog1("Brenda", 4);
	Dog dog2;

	cout << "Name: " << dog1.name << endl << "Age: " << dog1.age << endl;
	cout << "Name: " << dog2.name << endl << "Age: " << dog2.age << endl;

	return 0;
}