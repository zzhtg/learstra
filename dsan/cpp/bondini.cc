// boundini.cc -- using escape sequences

#include <iostream>

int main()
{
    using namespace std;
    int k\u00F6rper;
    cout << "Let them eat g\u00E2teau.\n";
    cout << "\aOperation \"HyperHype\" is now activated!\n";
    cout << "Enter your agent code:________\b\b\b\b\b\b\b\b";
    long code;
    cin >> code;
    cout << "\aYou entered " << code << "...\n";
    cout << "\aCode verified! Proceed with Plan Z3!\n";
    return 0;
}