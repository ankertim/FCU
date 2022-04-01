#include<iostream>
#include<cstdlib>
using namespace std;
int main()
{
	int a,b,c;
	float d,e,f,g;
	cout<<"請輸入花多少錢\n";
	cout<<"Breakfast：";
	cin>>a;
	cout<<"Lunch：";
	cin>>b;
	cout<<"Dinner：";
	cin>>c;
	d=(a+b+c);
	e=a/d*100,f=b/d*100,g=c/d*100;
	cout<<"Total="<<d<<'\n';
	cout<<'\t'<<"早\t"<<"午\t"<<"晚\t"<<'\n';
	cout<<"費用\t"<<a<<'\t'<<b<<'\t'<<c<<'\n';
	cout<<"比例\t"<<e<<"%"<<'\t'<<f<<"%"<<'\t'<<g<<"%"<<'\n';
	system("pause");
	return 0;
	
}
