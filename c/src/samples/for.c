#include <stdio.h>

int main(void) {
	int i;
	char c;

	for (i = 65; i < 91; i++) {
		printf ("%d - %c\n", i, i);
	}

	return 0;
}