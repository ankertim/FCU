#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	int start,day,i,n;
	cout<<"�o�Ӥ��`�@�X��";
	cin>>day;
	cout<<"1�����P���X(�Y�O§����п�J�s)";
	cin>>start;
	cout<<"�P����\t"<<"�P���@\t"<<"�P���G\t"<<"�P���T\t"<<"�P���|\t"<<"�P����\t"<<"�P����\t\n";
	for(i=1;i<=start;i++)
	{
		cout<<"\t";
	}
	for(i=1;i<=day;i++)
	{
		cout<<i<<"\t";
		if((i-(7-start))%7==0)
		{
			cout<<"\n";
		}
	}
	system("pause");
	return 0;
}

