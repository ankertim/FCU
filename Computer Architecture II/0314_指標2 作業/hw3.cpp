#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	int arr[2][4]={{2,3,4,5},{6,7,8,9}};//(a) arr���Ȭ���?(b) arr[0]�Parr[1]���ȦU���h��?(c) arr+1���Ȭ���?(d) *(arr+0)�P*(arr+1)���Ȭ���?
	cout<<"(a) arr="<<arr<<endl;
	cout<<"(b) arr[0]="<<arr[0]<<"�Aarr[1]="<<arr[1]<<endl;
	cout<<"(c) arr+1"<<arr+1<<endl;
	cout<<"(d) *(arr+0)="<<*(arr+0)<<"�A*(arr+1)="<<*(arr+1)<<endl;
	cout<<"(e) *(arr+1)+0="<<*(arr+1)+0<<"�A"<<"*(arr+1)+1="<<*(arr+1)+2<<endl
	<<"    *(arr+1)+2="<<*(arr+1)+2<<"�A"<<"*(arr+1)+3="<<*(arr+1)+3<<endl;
	cout<<"(f) *(*(arr+1)+0)="<<*(*(arr+1)+0)<<"�A"<<"*(*(arr+1)+1)="<<*(*(arr+1)+1)<<endl
	<<"    *(*(arr+1)+2)="<<*(*(arr+1)+2)<<"�A"<<"*(*(arr+1)+3)="<<*(*(arr+1)+3)<<endl;
	system("pause");
	return 0;
} 
