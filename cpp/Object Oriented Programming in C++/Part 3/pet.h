#ifndef __PET__
#define __PET__

#include <string>

class Pet
{
	public:
		Pet(std::string _name, int _age);

		void haveBirthday();
		int getAge() const;
		std::string getName() const;

	protected:
		std::string name;
		int age;
};

#endif