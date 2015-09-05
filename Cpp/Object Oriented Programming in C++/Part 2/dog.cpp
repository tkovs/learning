#include <iostream>
#include "dog.h"

Dog::Dog(std::string _name, int _age)
{
	name = _name;
	age = _age;
}

void Dog::bark()
{
	std::cout << "Woof! My name is " << name << " and I'm " << age << " years old." << std::endl;
}

void Dog::haveBirthday() { age++; }

int Dog::getAge() const { return age; }

std::string Dog::getName() const { return name; }