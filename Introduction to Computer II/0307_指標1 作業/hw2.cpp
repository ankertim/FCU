#include <iostream>
#include <cstdlib>
using namespace std;
void func(int *);
int main(void)
{
	int *(*(*(*j))),*(*(*n)),*(*i),*m,k=1500;
	m=&k,i=&m,n=&i,j=&n;
	cout<<"m: "<<m<<endl//�L�Xm=k����m=3000
	<<"i: "<<i<<endl//�L�Xi=m����m=4000
	<<"n: "<<n<<endl//�L�Xn=i����m=1000
	<<"&j: "<<&j<<endl//�L�Xj����m=2000
	<<"&m: "<<&m<<endl//�L�Xm����m=4000
	<<"*(*(*(*j))): "<<*(*(*(*j)))<<endl//�L�X*(*(*(*j)))=k����=1500 
	<<"*(*(&(*n))): "<<*(*(&(*n)))<<endl//�L�X*(*(&(*n)))=**&&m=k����}=3000
	<<"*(*(&(*(&m)))): "<<*(*(&(*(&m))))<<endl//�L�X*(*(&(*(&m))))=*m=k����=1500 
	<<"&(*(*(*(&j)))): "<<&(*(*(*(&j))))<<endl;//�L�X&(*(*(*(&j))))=*j=n=i����}1000 
	system ("pause");
	return 0;
}
