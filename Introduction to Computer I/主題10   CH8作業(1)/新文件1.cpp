#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	int n;
	int A[n];
	int B[n];
	int i,c=0;
	cout<<"�п�JA�PB�}�C���j�p:";
	cin>>n;
	cout<<"\t"<<endl;
	for(i=0;i<n;i++)
	{
		cout<<"�п�J�}�CA��"<<i+1<<"�ӼƦr:";
		cin>>A[i]; 
	}
	cout<<"\t"<<endl;
	for(i=0;i<n;i++)
	{
		cout<<"�п�J�}�CB��"<<i+1<<"�ӼƦr:";
		cin>>B[i]; 
	}
	for(i=0;i<n;i++)
	{
		c+=A[i]*B[i];
	}
    cout<<"\t"<<endl;
	cout<<"A�PB�����n��:"<<c;
	system("pause");
	return 0;
} 
