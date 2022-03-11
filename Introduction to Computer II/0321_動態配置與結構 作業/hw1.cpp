#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	int arr1[5]={1,2,3,4,5};
	int arr2[5]={6,7,8,9,10};
	int *arr3;
	arr3=new int[5];
	for(int i=0;i<5;i++)
	{
		arr3[i]=arr1[i]+arr2[i];
	}
	cout<<"arr1 = ";
	for(int i=0;i<5;i++)
	{
		cout<<arr1[i]<<" ";
	}
	cout<<endl;
	cout<<"arr2 = ";
	for(int i=0;i<5;i++)
	{
		cout<<arr2[i]<<" ";
	}
	cout<<endl;
	cout<<"arr3 = ";
	for(int i=0;i<5;i++)
	{
		cout<<arr3[i]<<" ";
	}
	cout<<endl;
	system("pause");
	return 0;
} 
