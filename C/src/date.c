#include <stdio.h>

int main(void) {
	const char *months[] = {
		"January",   // 00
		"February",  // 01
		"March",     // 02
		"April",     // 03
		"May",       // 04
		"June",      // 05
		"July",      // 06
		"August",    // 07
		"September", // 08
		"October",   // 09
		"November",  // 10
		"December"   // 11
	};

	int day1, month1, year1;
	int day2, month2;

	scanf ("%d/%d/%d to %d/%d/%*d", &day1, &month1, &year1, &day2, &month2);
	printf ("From %s %02d to %s %02d, %04d", months[month1-1], day1, months[month2-1], day2, year1);

	return 0;
}