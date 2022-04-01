#include <iostream>
#include <cstdlib>
using namespace std;
class account
{
	private:
		string name;
		int money;
	public:
		account(string n):name(n),money(2000)
		{}
		account(string n,int m):name(n),money(m)
		{}
		void outward(int num,account &obj)
		{
			cout<<"-----------------\n";
	        cout<<name<<"�״�"<<num<<"����"<<obj.name<<endl;
	        cout<<"-----------------\n";
			obj.inward(num);
			money-=num;
		}
		void inward(int num)
		{
			money+=num;
		}
		void show()
		{
			cout<<name<<"��"<<money<<"��\n";
		}
};
int main()
{
	account a("Ken");
	account b("Mary",94870);
	a.show();
	b.show();
	a.outward(1200,b);
	a.show();
	b.show();
	system("pause");
	return 0;
}
