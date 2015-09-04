#include <iostream>
#include "dog.h"

using namespace std;

int main(void)
{
	Dog dog("Brenda", 4);

	cout << "Name: " << dog.name << endl << "Age: " << dog.age << endl;

	return 0;
}