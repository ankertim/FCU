#include <iostream>
#include <cstdlib>
using namespace std;
int far(int a);
int main()
{
	int a;
	cout<<"�п�Ja�A�|�p��1�[��a\n";
	cin>>a;
	cout<<far(a);
	system("pause");
	return 0;
} 
int far(int a)
{
	if(a==1)
	{
		return a;
	}
	else
	return (a+far(a-1));
}
