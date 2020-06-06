#include<fstream>
using namespace std;

int main()
{
    ofstream fout;
    fout.open("file3.txt",ios::app);
    fout<<". To study, or not to study, that is the question!";
    fout.close();
    return 0;
}
