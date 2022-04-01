#include <iostream>
#include <cstdlib>
using namespace std;
struct mydata
{
	string name;
	int age;
	float weight;
};
int main()
{
	struct mydata person[3]={{"p1",12,99.96},{"p2",25,88.86},{"p3",98,78.87}};
	float age1=0,weight1=0;
	for(int i=0;i<3;i++)
	{
		cout<<"name:"<<person[i].name<<endl;
		cout<<"age:"<<person[i].age<<endl;
		cout<<"weight:"<<person[i].weight<<endl;
		cout<<"--------------\n";
	}
	for(int i=0;i<3;i++)
	{
		age1+=person[i].age;
	}
	for(int i=0;i<3;i++)
	{
		weight1+=person[i].weight;
	}
	cout<<"average age:"<<age1/3<<endl;
	cout<<"average weight:"<<weight1/3<<endl;
	system("pause");
	return 0;
} 
