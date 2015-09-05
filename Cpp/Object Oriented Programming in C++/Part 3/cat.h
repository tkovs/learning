#ifndef __CAT__
#define __CAT__

#include <string>
#include "pet.h"

class Cat : public Pet
{
	public:
		Cat(std::string _name, int _age);
		void meow() const;
};

#endif