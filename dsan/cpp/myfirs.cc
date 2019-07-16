//myfirst.cc -- displays a message
#include <iostream>

using namespace std;

int main()
{
    const char* ptr_string = "Come up and c++ me some time.\n";
    cout << ptr_string;
    cout << &ptr_string << endl;
    cout << "you won`t regret it!\n";
    return 0;
}