#include <iostream>
#include <cstdlib>
using namespace std;
int &min(int &,int &);
int main()
{
	int a=32,b=59,&c=a,&d=b;
	cout<<"a="<<a<<"¡Ab="<<b<<endl;
	min(c,d)=100;
	cout<<"a="<<a<<"¡Ab="<<b<<endl;
	system("pause");
	return 0;
} 
int &min(int &a1,int &b1)
{
	if(a1>b1)
	  return b1;
	else
	  return a1;  
}
