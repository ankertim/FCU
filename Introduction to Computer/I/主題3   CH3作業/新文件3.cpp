#include<iostream>
#include<cstdlib>
using namespace std;
int main()
{
	int a,b,c;
	float d,e,f,g;
	cout<<"�п�J��h�ֿ�\n";
	cout<<"Breakfast�G";
	cin>>a;
	cout<<"Lunch�G";
	cin>>b;
	cout<<"Dinner�G";
	cin>>c;
	d=(a+b+c);
	e=a/d*100,f=b/d*100,g=c/d*100;
	cout<<"Total="<<d<<'\n';
	cout<<'\t'<<"��\t"<<"��\t"<<"��\t"<<'\n';
	cout<<"�O��\t"<<a<<'\t'<<b<<'\t'<<c<<'\n';
	cout<<"���\t"<<e<<"%"<<'\t'<<f<<"%"<<'\t'<<g<<"%"<<'\n';
	system("pause");
	return 0;
	
}
