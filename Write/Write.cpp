#include<fstream>
using namespace std;

int main()
{
    ofstream fout;
    fout.open("file3.txt");
    fout<<"SS is the best subject in the whole world";
    fout.close();
    return 0;
}
