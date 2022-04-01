#include <iostream>
#include <cstdlib>
#include <cstring>
using namespace std;
void zxc(int,int);
int main()
{
	int a[5]={};
	for(int i=0;i<5;i++)
	 {
		  cout<<"請輸入第"<<i+1<<"個數為:";
		  cin>>a[i];
	 }
	for(int i=1;i<=5;i++)
	{
	    for(int i=4;i>0;i--)
	 {
		  if(a[i]<a[i-1])
		  {
		  	int temp=0;
		  temp=a[i-1];
		  a[i-1]=a[i];
		  a[i]=temp;
		  }
		  
	 }
	}
	cout<<"排序後為:";
	for(int i=0;i<5;i++)
	{
		cout<<a[i]<<" ";
	}
	system("pause");
	return 0;
}  

