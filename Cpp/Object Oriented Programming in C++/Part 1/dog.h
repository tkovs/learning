#ifndef __DOG__
#define __DOG__

#include <string>

class Dog
{
	public:
		std::string name;
		int age;

	Dog(std::string _name = "", int _age = 0);
};

#endif