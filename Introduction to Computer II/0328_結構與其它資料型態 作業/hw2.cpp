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
		cout<<"�п�ܿ�J������:(1)�y�� (2)�m�W ";
	    cin.get(s);
	    cin.get();
	}while((s>'2')||(s<'1'));
	if(s=='1')
	{
		cout<<"�п�J�y��:";
		cin>>david.id;
		cout<<"david.id = "<<david.id;
    }
	else
	{
	    cout<<"�п�J�m�W:";
		cin>>david.name;
		cout<<"david.name = "<<david.name<<endl;
	}
	system("pause");
	return 0;
} 
