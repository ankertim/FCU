#include <iostream>
#include <cstdlib>
using namespace std;
#include "head_math.h"
int main()
{
	int a,b,c,d,e,f;
	cout<<"�п�J����|��Ω�:";
	cin>>a;
	cout<<"�п�J����|��ΰ�:";
	cin>>b;
	cout<<"����|��έ��n:"<<PARA(a,b)<<"\n";
	cout<<"��J��ΤW��";
	cin>>c;
	cout<<"��J��ΤU��";
	cin>>d;
	cout<<"��ΰ�=";
	cin>>e;
	cout<<"���n="<<TRAPEZOID(c,d,e)<<"\n"; 
	cout<<"��J��b�|";
	cin>>f;
	cout<<"��P��="<<PERIPHERY(f)<<"\n";
	cout<<"�ꭱ�n="<<VOLUMN(f); 
} 
