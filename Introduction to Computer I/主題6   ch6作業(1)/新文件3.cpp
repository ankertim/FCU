#include <iostream>
#include <cstdlib>
using namespace std;
float star(float,int);
int main()
{
	float a,b;
	int c;
	cout<<"�п�J����";
	cin>>a;
	cout<<"�п�J��Q�v";
	cin>>b;
	cout<<"�п�J�s�ڴ���(��)";
	cin>>c;
	cout<<"���Q�M="<<star(b,c)*a;
	system("pause");
	return 0;
}
float star(float b,int c)
{
	float d=1;
	for(int i=1;i<=c;i++)
	{
		d=d*(1+b);
	}
	return d;
}

