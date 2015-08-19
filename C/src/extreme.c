#include <stdio.h>

#define SIZE 10
#define MAX(a,b) a > b ? a : b
#define MIN(a,b) a < b ? a : b
 
int foo(int *x, int *y);
int bar(int *x, int *y);

int main(void)
{
   int x[SIZE] = {2, 3, 4, 10, 5, 1, 6, 7, 8, 9};

   printf("Bigger: %d\n", foo(x, x + SIZE-1));
   printf("Smaller: %d\n", bar(x, x + SIZE-1));

   return 0;
}

int foo(int *x, int *y)
{
   if (x == y) { return *x; }
   return MAX(*x, foo(x + 1, y));
}
 
int bar(int *x, int *y)
{
   if (x == y) { return *x; }
   return MIN(*x, bar(x + 1, y));
} 