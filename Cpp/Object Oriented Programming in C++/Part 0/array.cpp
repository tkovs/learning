#include <iostream>

using namespace std;

int main(void)
{
	int size;
	int *arr;

	cout << "Enter array size: ";
	cin >> size;

	arr = new int[size];

	for (int i = 0; i < size; i++) {
		arr[i] = i * i;
	}

	for (int i = 0; i < size; i++) {
		cout << "arr[" << i << "] -> " << arr[i] << endl;
	}

	delete[] arr;

	return 0;
}