#include <iostream>
#include <cstdlib>
using namespace std;
float power(float a,float b);
float fact(float a);
int main()
{
	float b;
	float x,a=0;
	cout<<"�п�Jx";
	cin>>x;
	for(float b=0;b<=10;b++)
	{
		a=a+power(x,b)/fact(b);
	}
	cout<<"���׬�"<<a<<endl;
	system("pause");
	return 0;
}
float power(float x,float b)
{
	if(b==0)
	  return 1;
	else
	  return (x*power(x,b-1));  
}
float fact(float b)
{
	if(b>0)
	  return (b*fact(b-1));
	else
	  return 1;
}
