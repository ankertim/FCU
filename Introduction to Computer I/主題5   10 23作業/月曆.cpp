#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	int start,day,i,n;
	cout<<"這個月總共幾天";
	cin>>day;
	cout<<"1號為星期幾(若是禮拜日請輸入零)";
	cin>>start;
	cout<<"星期日\t"<<"星期一\t"<<"星期二\t"<<"星期三\t"<<"星期四\t"<<"星期五\t"<<"星期六\t\n";
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

