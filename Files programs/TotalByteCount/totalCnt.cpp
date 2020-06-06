#include<fstream>
#include<iostream>
#include<string>
using namespace std;

int main()
{
    ifstream fin;
    string x;
    int count = 0;
    fin.open("file2.txt");
    while(fin>>x)
    {
        ++count;
    }
    cout<<"Total words:"<<count;
    return 0;
}
