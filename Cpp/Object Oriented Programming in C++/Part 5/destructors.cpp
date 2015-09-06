#include <iostream>

using namespace std;

class Array
{
	private:
		int size;
		int *elements;
	public:
		Array(int _size) : size(_size), elements(new int[size]) {
			cout << "Constructed array of size " << size << endl;
		}

		virtual ~Array() {
			delete[] elements;
			cout << "Deleted elements of array of size " << size << endl;
		}

		int getSize() const { return size; }
		int& operator[](int i) { return elements[i]; }
};

class SpecialArray : public Array
{
	public:
		SpecialArray(int _size) : Array(_size) {
			cout << "SpecialArray Constructor" << endl;
		}

		~SpecialArray() {
			cout << "SpecialArray Destructor" << endl;
		}
};



int main(void)
{
	cout << "MAIN STARTED" << endl;
	Array* arr = new SpecialArray(5);

	for (int i = 0; i < arr->getSize(); i++) {
		(*arr)[i] = i * i;
	}

	for (int i = 0; i < arr->getSize(); i++) {
		cout << (*arr)[i] << endl;
	}

	delete arr;

	cout << "MAIN ENDED" << endl;

	return 0;
}