#include<iostream>
#include<fstream>
using namespace std;

int main()
{
    ifstream fin;
    fin.open("file2.txt");
    int size = fin.tellg();
    fin.seekg(0,ios::end);
    cout<<"Total bytes:"<<fin.tellg() - size;
}
