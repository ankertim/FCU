#include <iostream>
#include <cstdlib>
using namespace std;
class student
{
	public:
		float tall,weight,BMI;
	    student():tall(0),weight(0),BMI(0)
	    {}
	    void calc_BMI(void)
	    {
	    	BMI=weight/(tall/100*tall/100);
		}
};
int main()
{
	int person_num=0,i=0;
	cout<<"請輸入學生數量: ";
	cin>>person_num;
	student *ptr=new student[person_num];
	for(i=0;i<person_num;i++)
	{
		cout<<"請輸入學生"<<i+1<<"的身高 : ";
		cin>>(ptr+i)->tall;
		cout<<"請輸入學生"<<i+1<<"的體重 : ";
		cin>>(ptr+i)->weight;
		(ptr+i)->calc_BMI();
		cout<<"--------------\n";
	}
	for(i=0;i<person_num;i++)
	{
		cout<<"學生"<<i+1<<" :\n";
		cout<<"身高 : "<<(ptr+i)->tall<<" cm"<<endl;
		cout<<"重量 : "<<(ptr+i)->weight<<" kg"<<endl;
		cout<<"BMI : "<<(ptr+i)->BMI<<endl;
	}
	system("pause");
	return 0;
}
