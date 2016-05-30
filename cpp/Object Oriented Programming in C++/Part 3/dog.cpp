#include <iostream>
#include "dog.h"

Dog::Dog(std::string _name, int _age) : Pet(_name, _age)
{
	// None
}

void Dog::bark() const
{
	std::cout << "Woof! My name is " << name << " and I'm " << age << " years old." << std::endl;
}