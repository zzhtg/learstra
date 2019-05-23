/*
Date: 2019/5/1
Author: ZZH
Explain: Create a static number array, return the sum of max subsequence
max_sum1: O(N^3)
max_sum2: O(NlogN) 
max_sum3: O(N) (if maxsubsequence <= 0 return 0)
max_sum4: O(N) 
*/

#include "../include/standard.h"
#include "../include/maxsubsequence.h"

int* general_array(int array[])
{
    int i;

    printf("Now, we general a array to continue\n");
    srand((unsigned) time(NULL));
    for (i = 0; i < MAX; i++){
        array[i] = (rand() - RAND_MAX / 2) % 100;
    }
    printf("All done!\n");
    return array;
}

int max_sum1(int* parray, int n)
{
    int i, j;
    int thisSum, maxSum;

    maxSum = parray[0];
    for (i = 0; i < n; i++){
        thisSum = 0;
        for (j = i; j < n; j++){
            thisSum += parray[j];
            if (thisSum > maxSum)
                maxSum = thisSum;
        }
    }
    return maxSum;
}


int max_sequence_sum(int* parray, int left, int right)
{
    int maxLeftSum, maxRightSum;
    int maxLeftBorderSum, maxRightBorderSum;
    int leftBorderSum, rightBorderSum;
    int center, i;

    if (left >= right)
        return parray[right];

    center = (left + right) / 2;
    maxLeftSum = max_sequence_sum(parray, left, center);
    maxRightSum = max_sequence_sum(parray, center+1, right);

    maxLeftBorderSum = leftBorderSum = parray[center];
    for (i = center-1; i >= left; i--){
        leftBorderSum += parray[i];
        if (leftBorderSum > maxLeftBorderSum)
            maxLeftBorderSum = leftBorderSum;
    }

    maxRightBorderSum = rightBorderSum = parray[center+1];
    for (i = center + 2; i <= right; i++){
        rightBorderSum += parray[i];
        if (rightBorderSum > maxRightBorderSum)
            maxRightBorderSum = rightBorderSum;
    }

    return max3(maxLeftSum, maxRightSum, maxLeftBorderSum + maxRightBorderSum);
}

int max_sum2(int* parray, int n)
{
    return max_sequence_sum(parray, 0, n-1);
}

int max_sum3(int* parray, int n)
{
    int thisSum, maxSum, j;

    thisSum = maxSum = 0;
    for (j = 0; j < n; j++){
        thisSum += parray[j];
        if (thisSum > maxSum)
            maxSum = thisSum;
        else if (thisSum < 0)
            thisSum = 0;
    }
    return maxSum;
}

int max_sum4(int* parray, int n)
{
    int thisSum, maxSum, j;

    thisSum = maxSum = parray[0];
    for (j = 1; j < n; j++){
        thisSum += parray[j];
        if (thisSum > maxSum)
            maxSum = thisSum;
        else if (thisSum < 0)
            thisSum = 0;
    }
    return maxSum;
}

void func(void)
{
    printf("%s\n", __FUNCTION__);
}

int run(void)
{
    long sum;
    int a[MAX];
    int* parray = general_array(a);
    clock_t start1, start2, start3, start4;

    start1 = clock();
    sum = max_sum1(parray, MAX);
    printf("sum is :%ld\n", sum);
    printf("Algorithm 1 run time:%f seconds\n", (double)(clock() - start1) / CLOCKS_PER_SEC);

    start2 = clock();
    sum = max_sum2(parray, MAX);
    printf("sum is :%ld\n", sum);
    printf("Algorithm 2 run time:%f seconds\n", (double)(clock() - start2) / CLOCKS_PER_SEC);

    start3 = clock();
    sum = max_sum3(parray, MAX);
    printf("sum is :%ld\n", sum);
    printf("Algorithm 3 run time:%f seconds\n", (double)(clock() - start3) / CLOCKS_PER_SEC);

    start4 = clock();
    sum = max_sum4(parray, MAX);
    printf("sum is :%ld\n", sum);
    printf("Algorithm 4 run time:%f seconds\n", (double)(clock() - start4) / CLOCKS_PER_SEC);

    return 0;
}
