// limits.cc -- some integer limits
#include <iostream>
#include <climits>

int main()
{
    using namespace std;
    int intMax = INT_MAX;
    short shortMax = SHRT_MAX;
    long longMax = LONG_MAX;
    long long longLongMax = LONG_LONG_MAX;

    cout << "int is " << sizeof(int) << " bytes." << endl;
    cout << "short is " << sizeof shortMax << " bytes." << endl;
    cout << "long is " << sizeof longMax << " bytes." << endl;
    cout << "long long is " << sizeof longLongMax << " bytes." << endl;
    cout << endl;

    cout << "Maximum values:" << endl;
    cout << "int: " << intMax << endl;
    cout << "shrot: " << shortMax << endl;
    cout << "long: " << longMax << endl;
    cout << "long long: " << longLongMax << endl;
    cout << "unsigned long: " << ULONG_MAX << endl;

    return 0;
}