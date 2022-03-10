#include <iostream>
#include <cstdlib>
using namespace std;
float star(float,int);
int main()
{
	float a,b;
	int c;
	cout<<"請輸入本金";
	cin>>a;
	cout<<"請輸入月利率";
	cin>>b;
	cout<<"請輸入存款期數(月)";
	cin>>c;
	cout<<"本利和="<<star(b,c)*a;
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

