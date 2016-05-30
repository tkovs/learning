#include <iostream>
#include "cat.h"

Cat::Cat(std::string _name, int _age) : Pet(_name, _age)
{
	// None
}

void Cat::meow() const
{
	std::cout << "Meow! My name is " << name << " and I'm " << age << " years old." << std::endl;
}