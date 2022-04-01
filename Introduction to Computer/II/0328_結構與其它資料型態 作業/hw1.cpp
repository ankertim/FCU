#include <iostream>
#include <cstdlib>
using namespace std;
struct airbag{
	float a;//長度 
	float b;//寬
	float c;//高  
};
void expan(struct airbag *,float);
int main()
{
	float coe=1.12;
	struct airbag taiwan={10.3,14.3,16.6}; 
	cout<<"----------\n"<<"原始數值\n"<<"----------\n";
	cout<<"長度:"<<taiwan.a<<endl;
	cout<<"寬度:"<<taiwan.b<<endl;
	cout<<"高度:"<<taiwan.c<<endl;
	cout<<"體積:"<<(float)(taiwan.a*taiwan.b*taiwan.c)<<endl; 
	expan(&taiwan,coe);
	system("pause");
	return 0;
} 
void expan(struct airbag *t,float c)
{
	cout<<"----------\n"<<"太空中數值\n"<<"----------\n";
	t->a*=c;
	t->b*=c;
	t->c*=c;
	cout<<"長度:"<<t->a<<endl;
	cout<<"寬度:"<<t->b<<endl;
	cout<<"高度:"<<t->c<<endl;
	cout<<"體積:"<<(float)(t->a*t->b*t->c)<<endl; 
	return;
}
