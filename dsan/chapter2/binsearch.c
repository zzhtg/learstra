/*
* Date: 2019/5/10
* Author: ZZH
* Expalin: Binary search in a array that have been sorted
* O(logn)
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAX 10000
#define NOTFOUND -1

void run(void);
int *create_array();
int binary_search(const int array[], int x, int n);

int main()
{
    run();
    return 0;
}

void run(void)
{
    int *pa = create_array();
    int index;
    index = binary_search(pa, pa[0], MAX);
    if (index >= 0)
        printf("aim: %d\tindex: %d\t result: %d", pa[index], index, pa[0]);
    else
        printf("NOTFOUND");
    
}

int* create_array()
{
    static int array[MAX];
    int *pa;
    int i;

    for (i = 0; i < MAX; i++){
        array[i] = i;
    }
    pa = array;
    return pa;
}

int binary_search(const int array[], int x, int n)
{
    int mid, low, high;

    low = 0; high = n - 1;
    while (low <= high){
        mid = (low + high) / 2;
        if (x < array[mid])
            high = mid - 1;
        else if (x > array[mid])
            low = mid + 1;
        else
            return mid;
    }
    return NOTFOUND;
}
