#include <iostream>
#include <cstdlib>
#include <fstream>
using namespace std;
int main()
{
	fstream a;
	int A[4][6];
	char ch;
	a.open("A.txt",ios::in);
	
	for(int i=0;i<4;i++)
		{
			for(int j=0;j<6;j++)
			{
				a>>A[i][j];
			}
		}
	for(int i=0;i<4;i++)
		{
			for(int j=0;j<6;j++)
			{
				cout<<A[i][j]<<" ";
			}
			cout<<endl;
		}
				cout<<endl<<endl;
		while(a.get(ch))//�Y���HCH�r�J�A����ŪINT�|�X�{�ýX 
		{
			cout<<ch;
		}

	a.close();
	system("pause");
	return 0;
 } 
