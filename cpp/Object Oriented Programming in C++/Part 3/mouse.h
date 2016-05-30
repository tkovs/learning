#include <string>
#include "pet.h"

class Mouse : public Pet
{
	public:
		Mouse(std::string _name, int _age);
		void squeak() const;
};