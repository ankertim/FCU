#include <iostream>
#include <cstdlib>
using namespace std;
void func(int *);
int main(void)
{
	int a,*ptra;
	for(;;)
	{
		cout<<"�п�J����:";
		cin>>a;
		if(a>100||a<0)
		{
			cout<<"�������Z���\n";
            break; 
		}
		ptra=&a;
		func(ptra);
		cout<<"������Ƭ�:"<<a<<endl;
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
