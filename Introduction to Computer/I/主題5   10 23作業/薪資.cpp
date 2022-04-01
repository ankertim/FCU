#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	char ch;
	int hour,salary;
	cout<<"薪水列表\n";
	cout<<"Manger，500/hr\n";
	cout<<"Leader，200/hr\n";
	cout<<"Worker，140/hr\n";
	cout<<"請輸入名子(M/m,L/l,W/w):";
	cin>>ch;
	cout<<"請輸入時數";
	cin>>hour;
	switch(ch)
	{
		case'W':
		case'w':cout<<"薪水為:"<<140*hour;
		break; 
		case'L':
		case'l':cout<<"薪水為:"<<2000*hour;
		break; 
		case'M':
		case'm':cout<<"薪水為:"<<500*hour;
		break; 
		default:
		cout<<"\n";
		cout<<"輸入錯誤\n";
	}
	system("pause");
	return 0;
}
 
