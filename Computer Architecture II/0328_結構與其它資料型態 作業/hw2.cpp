#include <iostream>
#include <cstdlib>
using namespace std;
union student
{
	int id;
	char name[];
}david;
int main()
{
	char s;
	do{
		cout<<"請選擇輸入的項目:(1)座號 (2)姓名 ";
	    cin.get(s);
	    cin.get();
	}while((s>'2')||(s<'1'));
	if(s=='1')
	{
		cout<<"請輸入座號:";
		cin>>david.id;
		cout<<"david.id = "<<david.id;
    }
	else
	{
	    cout<<"請輸入姓名:";
		cin>>david.name;
		cout<<"david.name = "<<david.name<<endl;
	}
	system("pause");
	return 0;
} 
