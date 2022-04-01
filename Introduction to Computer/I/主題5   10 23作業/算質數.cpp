#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	int a,i,j;
	cout<<"½Ð¿é¤J¼Æ¦r:";
	cin>>a;
	if(a<3)
	{
		cout<<"error";
		exit(0);
	}
	else for(i=2;i<=a;i++)
	{
		for(j=2;j<=i;j++)
		{
			if(i%j==0)
			break;
		}
	if(i==j)
	cout<<j<<"\t";
	}
	system("pause");
	return 0;
}
