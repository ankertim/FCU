#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	int arr[2][4]={{2,3,4,5},{6,7,8,9}};//(a) arr的值為何?(b) arr[0]與arr[1]的值各為多少?(c) arr+1的值為何?(d) *(arr+0)與*(arr+1)的值為何?
	cout<<"(a) arr="<<arr<<endl;
	cout<<"(b) arr[0]="<<arr[0]<<"，arr[1]="<<arr[1]<<endl;
	cout<<"(c) arr+1"<<arr+1<<endl;
	cout<<"(d) *(arr+0)="<<*(arr+0)<<"，*(arr+1)="<<*(arr+1)<<endl;
	cout<<"(e) *(arr+1)+0="<<*(arr+1)+0<<"，"<<"*(arr+1)+1="<<*(arr+1)+2<<endl
	<<"    *(arr+1)+2="<<*(arr+1)+2<<"，"<<"*(arr+1)+3="<<*(arr+1)+3<<endl;
	cout<<"(f) *(*(arr+1)+0)="<<*(*(arr+1)+0)<<"，"<<"*(*(arr+1)+1)="<<*(*(arr+1)+1)<<endl
	<<"    *(*(arr+1)+2)="<<*(*(arr+1)+2)<<"，"<<"*(*(arr+1)+3)="<<*(*(arr+1)+3)<<endl;
	system("pause");
	return 0;
} 
