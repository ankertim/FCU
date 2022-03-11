#include <iostream>
#include <cstdlib>
using namespace std;
class student
{
	public:
		string name;
		int math, english, chinese;
		double avg;
		student(string n,int m,int e,int c)
		{
			name=n;
			math=m;
			english=e;
			chinese=c;
			avg=(double)(m+e+c)/3;
		}
		void show()
		{
			cout<<"Name: "<<name<<endl;
			cout<<"math: "<<math<<endl;
			cout<<"English: "<<english<<endl;
			cout<<"Chinese: "<<chinese<<endl;
			cout<<"Average: "<<avg<<endl;
		}
};
void if_pass(student *obj)
{
	if(obj->avg<60)
	  cout<<obj->name;
} 
int main()
{
	int i=0;
	student person[3]={student("Mary",12,32,53),student("Terry",88,99,32),student("Leo",85,82,12)};
	for(i=0;i<3;i++)
	{
		cout<<"Person "<<i+1<<endl;
		(person+i)->show();
		cout<<"-----------------\n";
	}
	cout<<"Fail: ";
	for(i=0;i<3;i++)
	{
		if_pass(person+i);
		cout<<" ";
	}
	
	system("pause");
	return 0;
}
