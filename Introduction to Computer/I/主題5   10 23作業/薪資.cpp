#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	char ch;
	int hour,salary;
	cout<<"�~���C��\n";
	cout<<"Manger�A500/hr\n";
	cout<<"Leader�A200/hr\n";
	cout<<"Worker�A140/hr\n";
	cout<<"�п�J�W�l(M/m,L/l,W/w):";
	cin>>ch;
	cout<<"�п�J�ɼ�";
	cin>>hour;
	switch(ch)
	{
		case'W':
		case'w':cout<<"�~����:"<<140*hour;
		break; 
		case'L':
		case'l':cout<<"�~����:"<<2000*hour;
		break; 
		case'M':
		case'm':cout<<"�~����:"<<500*hour;
		break; 
		default:
		cout<<"\n";
		cout<<"��J���~\n";
	}
	system("pause");
	return 0;
}
 
