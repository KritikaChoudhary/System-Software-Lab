#include<iostream>
#include<fstream>
using namespace std;

int main()
{
    ifstream fin;
    char x;
    fin.open("file3.txt");
    fin.seekg(30,ios::beg);
    while(fin>>std::noskipws>>x){
        cout<<x;
    }
    cout<<endl<<fin.tellg();
    fin.seekg(10);
    cout<<endl<<fin.tellg();
    while(fin>>std::noskipws>>x){
        cout<<x;
    }
    fin.seekg(10);
    fin.seekg(12,ios::cur);
    cout<<endl<<fin.tellg();
    while(fin>>std::noskipws>>x){
        cout<<x;
    }
}
