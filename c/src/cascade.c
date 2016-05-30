#include <stdio.h>
#include <string.h>

/*
input
FULANO

output
F
FU
FUL
FULA
FULAN
FULANO
FULAN
FULA
FUL
FU
F
*/

void cascade(char *, int, int, int);

int main(void) {
	char s[20];

	printf ("Insert a string: ");
	scanf ("%[^\n]s", s);

	cascade(s, 0, 1, strlen(s) - 1);

	return 0;
}

void cascade(char *s, int current, int status, int limit) {
	int i = 0;

	if (current == -1) return;

	while (i <= current)
		printf("%c", s[i++]);

	printf ("\n");

	if (current == limit)
		status = -1;

	if (status == 1)
		current++;
	else
		current--;

	cascade(s, current, status, limit);
}