// Unicode_display.cc -- shows some Unicode character

#include <iostream>

int main()
{
    using namespace std;

    for (wchar_t unicode = L'\u0000'; unicode < WCHAR_MAX; unicode++) {
        wcout << unicode << endl;
    }
    return 0;
}