#include <iostream>
#include <cstdlib>
using namespace std;
void count(int []);
int main()
{
	int data[10]={51,36,88,74,45,3,98,71,63,55};
	cout<<"陣列內容為";
	for(int i=0;i<10;i++)
	{
		cout<<data[i]<<" ";
	}
	cout<<endl;
	count(data);
	system("pause");
	return 0;
}
void count(int data[])
{
	int a=0,b=0,c=0;
	for(int i=0;i<10;i++)
	{
		if(data[i]%2==0)
		{
			b+=1;
		}
		c+=1;
	}
	a=c-b;
	cout<<"奇數有"<<a<<"個，偶數有"<<b<<"個\n";
	return;
}
