#include <iostream>
#include <cstdlib>
using namespace std;
void square(int *);
int main()
{
	int arr[5]={1,2,3,4,5};
	cout<<"��l�}�C\n";
	for(int i=0;i<5;i++)
	{
		cout<<arr[i]<<" ";
	}
	cout<<endl<<"�����\n";
	square(arr);
	system("pause");
	return 0;
} 
void square(int *arr)
{
	for(int i=0;i<5;i++)
	{
		cout<<(*arr+i)*(*arr+i)<<" ";
	}
}
 
