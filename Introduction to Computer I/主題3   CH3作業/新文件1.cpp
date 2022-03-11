#include<iostream>
#include<cstdlib>
using namespace std;
int main()
{
	int a;
	cout<<"請輸入華氏溫度：\n";
	cin>>a;
	cout<<"攝氏溫度為："<<(a-32)*5/9<<"度c\n";
	system("pause");
	return 0;
}
