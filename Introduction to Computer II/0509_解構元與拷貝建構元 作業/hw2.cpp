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
	cout<<"�п�J�ǥͼƶq: ";
	cin>>person_num;
	student *ptr=new student[person_num];
	for(i=0;i<person_num;i++)
	{
		cout<<"�п�J�ǥ�"<<i+1<<"������ : ";
		cin>>(ptr+i)->tall;
		cout<<"�п�J�ǥ�"<<i+1<<"���魫 : ";
		cin>>(ptr+i)->weight;
		(ptr+i)->calc_BMI();
		cout<<"--------------\n";
	}
	for(i=0;i<person_num;i++)
	{
		cout<<"�ǥ�"<<i+1<<" :\n";
		cout<<"���� : "<<(ptr+i)->tall<<" cm"<<endl;
		cout<<"���q : "<<(ptr+i)->weight<<" kg"<<endl;
		cout<<"BMI : "<<(ptr+i)->BMI<<endl;
	}
	system("pause");
	return 0;
}
