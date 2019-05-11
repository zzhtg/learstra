#ifndef CHAPTER2_BIN_SEARCH_H_
#define CHAPTER2_BIN_SEARCH_H_

#include <stdio.h>  

#define MAX 10000
#define NOTFOUND -1

void run(void);
int *create_array();
int binary_search(const int array[], int x, int n);

#endif  //CHAPTER2_BIN_SEARCH_H_