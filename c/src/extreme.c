#include <stdio.h>

#define SIZE 10
#define MAX(a,b) a > b ? a : b
#define MIN(a,b) a < b ? a : b
 
int bigger(int*, int*);
int smaller(int*, int*);
int index(int, int*, int);

int main(void)
{
   int array[SIZE] = {2, 3, 4, 10, 5, 1, 6, 7, 8, 9};

   int b = bigger(array, array + SIZE-1);
   int ib = index(b, array, SIZE);

   int s = smaller(array, array + SIZE-1);
   int is = index(s, array, SIZE);

   printf ("Bigger: %d - Index: %d\n", b, ib);
   printf ("Smaller: %d - Index: %d\n", s, is);

   return 0;
}

int index(int x, int *array, int size) {
   int i = 0;

   while (i < size) {
      if (x == array[i])
         return i;
      else i++;
   }

   return -1;
}

int bigger(int *x, int *y)
{
   if (x == y) { return *x; }
   return MAX(*x, bigger(x + 1, y));
}
 
int smaller(int *x, int *y)
{
   if (x == y) { return *x; }
   return MIN(*x, smaller(x + 1, y));
} 