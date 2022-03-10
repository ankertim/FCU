#include <iostream>
#include <cstdlib>
using namespace std;
class character_base{
	public:
		string name;
		int age;
		character_base(string n="Mary",int a=15)
		{
			name=n;
			age=a;
		}
		void action(){
			cout<<"Eat";
			return;
		}
		void show(){
			cout<<"---------------\n";
			cout<<"Name: "<<name<<endl;
			cout<<"Age: "<<age<<endl;
			cout<<"action: ";
			this->action();
			cout<<endl;
		}
};
class wizard:public character_base{
	public:
		string career="wizard";
	    wizard(string a,int b):character_base(a,b)
	    {}
	    void action(){
	    	cout<<"Magic";
		}
		void show(){
			cout<<"---------------\n";
			cout<<"Name: "<<name<<endl;
			cout<<"Age: "<<age<<endl;
			cout<<"Career: "<<career<<endl;
			cout<<"action: ";
			this->action();
			cout<<endl;
		} 
}; 
class swordsman:public character_base{
	public:
		string career="swordsman";
	    swordsman(string a,int b):character_base(a,b)
	    {}
	    void action(){
	    	cout<<"Wield the sword";
		}
		void show(){
			cout<<"---------------\n";
			cout<<"Name: "<<name<<endl;
			cout<<"Age: "<<age<<endl;
			cout<<"Career: "<<career<<endl;
			cout<<"action: ";
			this->action();
			cout<<endl;
		}
}; 
int main()
{
	character_base M;
	wizard H("Helen",13);
	swordsman T("Tim",17);
	M.show();
	H.show();
	T.show();
	system("pause");
	return 0;
}
