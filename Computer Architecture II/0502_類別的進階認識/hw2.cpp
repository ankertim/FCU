#include <iostream>
#include <cstdlib>
using namespace std;
class account
{
	private:
		string name;
		int money;
	public:
		account(string n,int m)
		{
			name=n;
			money=m;
		}
		account compare(account &obj)
		{
			if(money>obj.money)
			{
				return *this;
			}
			else
			{
				return obj;
			}
		}
		void show()
		{
			cout<<name<<"��"<<money<<"��\n";
		}
		int get_money()
		{
			return money;
		}
};
int main()
{
	int sub=0;
	account person[3]={account("Tom",9463),account("Tim",8383),account("Leo",32329)};
	for(int i=0;i<3;i++)
	{
		person[i].show();
	}
	cout<<"--------------\n"<<"�̦����̬� :\n";
	((person[0].compare(person[1])).compare(person[2])).show();
	cout<<"--------------\n";
	cout<<"�T�H�b�ᤧ�������B�� :";
	for(int i=0;i<3;i++)
	{
		sub+=person[i].get_money();
	}
	cout<<sub/3<<"��\n";
	
	system("pause");
	return 0;
}
