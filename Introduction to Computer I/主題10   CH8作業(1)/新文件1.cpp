#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	int n;
	int A[n];
	int B[n];
	int i,c=0;
	cout<<"請輸入A與B陣列的大小:";
	cin>>n;
	cout<<"\t"<<endl;
	for(i=0;i<n;i++)
	{
		cout<<"請輸入陣列A第"<<i+1<<"個數字:";
		cin>>A[i]; 
	}
	cout<<"\t"<<endl;
	for(i=0;i<n;i++)
	{
		cout<<"請輸入陣列B第"<<i+1<<"個數字:";
		cin>>B[i]; 
	}
	for(i=0;i<n;i++)
	{
		c+=A[i]*B[i];
	}
    cout<<"\t"<<endl;
	cout<<"A與B的內積為:"<<c;
	system("pause");
	return 0;
} 
