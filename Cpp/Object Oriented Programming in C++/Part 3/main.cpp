#include <iostream>
#include "dog.h"
#include "mouse.h"
#include "cat.h"

using namespace std;

int main(void)
{
	Dog d("Spike", 2);
	Cat c("Felix", 5);
	Mouse m("Rato", 1);

	d.bark();
	c.haveBirthday();
	c.meow();
	m.squeak();

	return 0;
}