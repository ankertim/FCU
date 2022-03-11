#include <iostream>
#include <cstdlib>
using namespace std;
void func(int *);
int main(void)
{
	int *(*(*(*j))),*(*(*n)),*(*i),*m,k=1500;
	m=&k,i=&m,n=&i,j=&n;
	cout<<"m: "<<m<<endl//印出m=k的位置=3000
	<<"i: "<<i<<endl//印出i=m的位置=4000
	<<"n: "<<n<<endl//印出n=i的位置=1000
	<<"&j: "<<&j<<endl//印出j的位置=2000
	<<"&m: "<<&m<<endl//印出m的位置=4000
	<<"*(*(*(*j))): "<<*(*(*(*j)))<<endl//印出*(*(*(*j)))=k的值=1500 
	<<"*(*(&(*n))): "<<*(*(&(*n)))<<endl//印出*(*(&(*n)))=**&&m=k的位址=3000
	<<"*(*(&(*(&m)))): "<<*(*(&(*(&m))))<<endl//印出*(*(&(*(&m))))=*m=k的值=1500 
	<<"&(*(*(*(&j)))): "<<&(*(*(*(&j))))<<endl;//印出&(*(*(*(&j))))=*j=n=i的位址1000 
	system ("pause");
	return 0;
}
