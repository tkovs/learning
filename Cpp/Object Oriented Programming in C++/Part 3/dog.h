#ifndef __DOG__
#define __DOG__

#include <string>
#include "pet.h"

class Dog : public Pet
{
	public:
		Dog(std::string _name, int _age);
		void bark() const;
};

#endif