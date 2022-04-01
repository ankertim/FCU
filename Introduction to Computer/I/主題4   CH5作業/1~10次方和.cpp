#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	int a,b,c=0,d;
	for(int a=1;a<=100;a++)
	{   
	    b=a*a*a;
	    c=c+b;	
	}
	cout<<c;
	system("pause");
	return 0;
}
