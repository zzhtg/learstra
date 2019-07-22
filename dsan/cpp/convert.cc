// convert.cc -- converts stone to pounds
#include <iostream>

int stone2lb(int sts)
{
    return 14 * sts;
}

int main()
{
    using namespace std;

    cout << "Enter a number in stone converts to pounds: ";
    int stone;
    cin >> stone;
    int pounds = stone2lb(stone);
    int aunt = stone2lb(20);
    int aunts = aunt + stone2lb(10);

    cout << stone << " stone = ";
    cout << pounds << " pounds" << endl;
    cout << "aunt = " << aunt << endl;
    cout << "aunts = " << aunts << endl;

    return 0;
}