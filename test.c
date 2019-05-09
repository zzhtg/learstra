/*
* This is a file aim to test properties of C programming language
*/

#include <stdio.h>

#define max(a, b) ((a) > (b) ? (a) : (b))
#define max3(a, b, c) (max(a, max(b, c)))

int main()
{
    printf("%d\n", max3(1 + 2, 2 + 2, 3 + 3));
    return 0;
}