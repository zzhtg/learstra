#include <stdio.h>

//递归判断 n 的奇偶，
long int spow(long int x, int n)
{
    if (n == 0)
        return 1;
    if (n & 1)
        return spow(x * x, n/2) * x;
    else
        return spow(x * x, n/2);
}

//使用位运算逐位平方，奇偶在2进制最右边判断
long int zpow(long int x, int n)
{
    long int pow = 1;
    while (n != 0){
        if (n & 1)
            pow *= x;
        x *= x;
        n >>= 1;
    }
    return pow;
}

long int upow(long int x, int n)
{
    long int pow = 1;
    while (n-- > 0){
        pow *= x;
    }
    return pow;
}

#define MAX 31

int main()
{
    long int x = 2;
    for (int n = 0; n < MAX; n++)
        printf("zpow:%ld\n", zpow(x, n));
    for (int n = 0; n < MAX; n++)
        printf("spow:%ld\n", spow(x, n));
    for (int n = 0; n < MAX; n++)
        printf("upow:%ld\n", upow(x, n));
    return 0;
}
