#include <stdio.h>

int soma(int, int);

int main(void) {
    printf("%d", soma(3, 4));

    return 0;
}

int soma(int a, int b) {
    return a + b;
}
