#include <string>
#include <iostream>
#include "pet.h"

Pet::Pet(std::string _name = "", int _age = 0) : name(_name), age(_age)
{
	// None
}

void Pet::haveBirthday() { age++; }

int Pet::getAge() const
{
	return age;
}

std::string Pet::getName() const
{
	return name;
}