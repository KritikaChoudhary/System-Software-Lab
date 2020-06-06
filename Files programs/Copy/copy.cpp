#include<fstream>
using namespace std;

int main()
{
    ifstream infile;
    ofstream outfile;
    char x;
    outfile.open("file2.txt");
    infile.open("file.txt");
    while(infile>>std::noskipws>>x){
        outfile<<x;
    }
    infile.close();
    outfile.close();

    return 0;
}

