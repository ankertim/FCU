#include <iostream>
#include <cstdlib>
using namespace std;
void gcd(int &,int &,int &);
int main()
{
	int a,b,g;
	cout<<"叫块a,b盢璸衡程そ计\n";
	cout<<"a=";
	cin>>a;
	cout<<"b=";
	cin>>b;
	cout<<"a㎝b程そ计:";
	gcd(a,b,g);
	cout<<endl;
	system("pause");
	return 0;
} 
void gcd(int &a,int &b,int &g)
{
	if(a>=b)
	{
		for(int i=1;i<=a;i++)
		{
			if(a%i==0&&b%i==0)
			{
			    g=i;
			} 
		}
		cout<<g;
	}
	else 
	{
		for(int i=1;i<=b;i++)
		{
			if(a%i==0&&b%i==0)
			{
				g=i;
			}
			
		}
		cout<<g;
	}
	return;
}
