#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	short a=32, *ptra=&a;
	int b=60, *ptrb=&b;
	double f=3.14, *ptrf=&f;
	cout<<"a="<<a<<"¡Asizeof(a)="<<sizeof(a)<<"¡A&a="<<&a<<endl;
	cout<<"b="<<b<<"¡Asizeof(b)="<<sizeof(b)<<"¡A&b="<<&b<<endl;
	cout<<"f="<<f<<"¡Asizeof(f)="<<sizeof(f)<<"¡A&f="<<&f<<endl;
	*ptra=*ptra*3;
	*ptrb=*ptrb*3;
	*ptrf=*ptrf*3;
	cout<<"a="<<a<<"¡Ab="<<b<<"¡Af="<<f;
	system ("pause");
	return 0;
} 
