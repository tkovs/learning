#include <iostream>
#include "dog.h"

using namespace std;

int main(void)
{
	Dog d("Spike", 2);
	d.haveBirthday();
	d.bark();

	return 0;
}