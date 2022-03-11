#include <iostream>
#include <cstdlib>
#include <cstring>
using namespace std;
int main()
{
	char a[20];
	char str[2][10]={"FRANK","YOUNG"};
 	cout<<"½Ð¿é¤J±K½X¡G";
	cin>>a;
	strupr(a);
    if(strcmp(a,str[0])==0 || strcmp(a,str[1])==0)
    {
    	cout<<"pass\n";
	}
	else
	{
		cout<<"wrong password\n";
	}
	system("pause");
	return 0;
} 
