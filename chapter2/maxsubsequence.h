#ifndef CHAPTER2_MAXSUBSEQUENCE_H_
#define CHAPTER2_MAXSUBSEQUENCE_H_

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define max(a, b) (((a) > (b)) ? (a) : (b))
#define max3(a, b, c) (max(a, max(b, c)))

#define MAX 5000

int* general_array(int array[]);
int max_sum1(int* parray, int n);

int max_sum2(int* parray, int n);
int max_sequence_sum(int* parray, int left, int right);

int max_sum3(int* parray, int n);
int max_sum4(int* parray, int n);

extern int run(void);
#endif      //CHAPTER2_MAXSUBSEQUENCE_H_