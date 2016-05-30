#ifndef __MOUSE__
#define __MOUSE__

#include <iostream>
#include "mouse.h"

Mouse::Mouse(std::string _name, int _age) : Pet(_name, _age)
{
	// None
}

void Mouse::squeak() const
{
	std::cout << "Squeak! My name is " << name << " and I'm " << age << " years old." << std::endl;
}

#endif