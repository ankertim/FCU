#include <iostream>
#include <cstdlib>
using namespace std;
void func(int *);
int main(void)
{
	int a,*ptra;
	for(;;)
	{
		cout<<"請輸入分數:";
		cin>>a;
		if(a>100||a<0)
		{
			cout<<"結束成績更改\n";
            break; 
		}
		ptra=&a;
		func(ptra);
		cout<<"更改後分數為:"<<a<<endl;
    }
	system ("pause");
	return 0;
} 
void func(int *p1)
{
	if(*p1==58||*p1==59)
	  *p1=60;
	return;
}
