#include <iostream>
#include <cstdlib>
#include <fstream>
using namespace std;
int main()
{
	fstream iA,iB,oC;
	iA.open("A.txt",ios::in);
	iB.open("B.txt",ios::in);
	oC.open("C.txt",ios::out);
	char ch;
	int A[4][6]={0},B[6][4]={0},C[4][4]={0};
	cout<<"矩陣 A 內容 :\n";	
	for(int i=0;i<4;i++)
		{
			for(int j=0;j<6;j++)
			{
				iA>>A[i][j];
				cout<<A[i][j]<<" ";
			}
			cout<<endl;
		}
	
    cout<<endl<<endl;
	cout<<"矩陣 B 內容 :\n";
	for(int i=0;i<6;i++)
		{
			for(int j=0;j<4;j++)
			{
				iB>>B[i][j];
				cout<<B[i][j]<<" ";
			}
			cout<<endl;
		}
    cout<<endl<<endl;
    cout<<"矩陣 C 內容 :\n";
    for(int i=0;i<4;i++)
    {
    	for(int j=0;j<4;j++)
    	{
    		for(int k=0;k<6;k++)
    		{
    			C[i][j]+=A[i][k]*B[k][j];
			}
			cout<<C[i][j]<<"\t";
			oC<<C[i][j]<<"\t";
		}
		cout<<endl;
		oC<<endl;
	}
	cout<<"矩陣 C 寫入完成...\n";
	
	iA.close();
	iB.close();
	oC.close();
	system("pause");
	return 0;
}
