#include <iostream>
#include <string>

using namespace std;

struct Dog
{
	string name;
	int age;
};

void initDog(Dog &d, string _name, int _age);

int main(void)
{
	Dog d;

/*	d.name = "Spike";
	d.age = 2; */
	
 	initDog(d, "Spike", 2);

	cout << "Name: " << d.name << endl;
	cout << "Age: " << d.age << endl;

	return 0;
}

void initDog(Dog &d, string _name, int _age)
{
	d.name = _name;
	d.age = _age;
}