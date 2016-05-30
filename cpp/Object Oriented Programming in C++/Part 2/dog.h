#ifndef __DOG__
#define __DOG__

#include <string>

class Dog
{
	public:
		void bark() const;
		void haveBirthday();
		Dog(std::string _name = "", int _age = 0);
		// gets and sets
		int getAge() const;
		std::string getName() const;

	private:
		int age;
		std::string name;
};

#endif