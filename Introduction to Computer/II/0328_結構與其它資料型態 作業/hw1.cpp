#include <iostream>
#include <cstdlib>
using namespace std;
struct airbag{
	float a;//���� 
	float b;//�e
	float c;//��  
};
void expan(struct airbag *,float);
int main()
{
	float coe=1.12;
	struct airbag taiwan={10.3,14.3,16.6}; 
	cout<<"----------\n"<<"��l�ƭ�\n"<<"----------\n";
	cout<<"����:"<<taiwan.a<<endl;
	cout<<"�e��:"<<taiwan.b<<endl;
	cout<<"����:"<<taiwan.c<<endl;
	cout<<"��n:"<<(float)(taiwan.a*taiwan.b*taiwan.c)<<endl; 
	expan(&taiwan,coe);
	system("pause");
	return 0;
} 
void expan(struct airbag *t,float c)
{
	cout<<"----------\n"<<"�ӪŤ��ƭ�\n"<<"----------\n";
	t->a*=c;
	t->b*=c;
	t->c*=c;
	cout<<"����:"<<t->a<<endl;
	cout<<"�e��:"<<t->b<<endl;
	cout<<"����:"<<t->c<<endl;
	cout<<"��n:"<<(float)(t->a*t->b*t->c)<<endl; 
	return;
}
