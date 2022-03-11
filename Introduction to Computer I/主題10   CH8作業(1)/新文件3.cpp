#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	int A[3][3]={{3,2,1},{5,6,7},{2,4,6}};
	int B[3][2]={{2,3},{3,4},{6,2}};
	int C[3][2]={};
	cout<<"¯x°}A¡G\n";
	for(int i=0;i<3;i++)
	{
		for(int j=0;j<3;j++)
		{
			cout<<" "<<A[i][j]<<" ";
		}
		cout<<endl;
	}
	cout<<"=====================\n";
	cout<<"¯x°}B¡G\n";
	for(int i=0;i<3;i++)
	{
		for(int j=0;j<2;j++)
		{
			cout<<" "<<B[i][j]<<" ";
		}
		cout<<endl;
	}
	for(int i=0;i<3;i++)
	{
		for(int j=0;j<2;j++)
		{
			for(int k=0;k<3;k++)
			{
				C[i][j]+=A[i][k]*B[k][j];
			}
		}
	}
	cout<<"=====================\n";
	cout<<"¯x°}C¡G\n";
	for(int i=0;i<3;i++)
	{
		for(int j=0;j<2;j++)
		{
			cout<<" "<<C[i][j]<<" ";
		}
		cout<<endl;
	}
	system("pause");
	return 0;
 } 
