#include <stdio.h>

int sum_multiples(int, int);

int main(void) {
  int a = sum_multiples(3, 1000);
  int b = sum_multiples(5, 1000);
  int c = sum_multiples(15, 1000);

  printf ("%d", a + b - c);

  return 0;
}

int sum_multiples(int n, int limit) {
  int i = n; // Backup
  int sum = 0;

  while (n < limit) {
    sum = sum + n;
    n += i;
  }

  return sum;
}
