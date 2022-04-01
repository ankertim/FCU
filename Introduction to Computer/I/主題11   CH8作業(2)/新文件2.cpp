#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	int a[4][3]={{1,2,3},{4,5,6,},{7,8,9},{11,12,13}};
	int b[3][4]={};
	int c[4][4]={};
	int temp;
	cout<<"轉置前：\n";
	for(int i=0;i<4;i++)
	{
		for(int j=0;j<3;j++)
		{
			cout<<a[i][j]<<" ";
		}
		cout<<endl;
	}
	cout<<"轉置後：\n";
	for(int i=0;i<4;i++)
	{
		for(int j=0;j<3;j++)
		{
			//temp=a[i][j];
			b[j][i]=a[i][j];//b[i][j]=a[j][i];
			//b[j][i]=temp
		}

	}
	for(int j=0;j<3;j++)
	{
		for(int i=0;i<4;i++)
		{
			cout<<b[j][i]<<" ";
		}
		cout<<endl;
	}
	cout<<"相乘後：\n";
	for(int i=0;i<4;i++)
	{
		for(int j=0;j<4;j++)
		{
			for(int k=0;k<3;k++)
			c[i][j]+=a[i][k]*b[k][j];
		}
	}
	for(int i=0;i<4;i++)
	{
		for(int j=0;j<4;j++)
		{
			cout<<c[i][j]<<" ";
		}
		cout<<endl;
	}
	system("pause");
	return 0;
}
