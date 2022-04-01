#include <iostream>
#include <cstdlib>
using namespace std;
double avg(int,int b = 5,int c = 7);
int main()
{
	int a,b,c;
	cout<<"a=13"<<"¡A\t"<<"b=5"<<"¡A\t"<<"c=7"<<"\t"<<"¥­§¡="<<avg(13)<<"\n";
    cout<<"a=9"<<"¡A\t"<<"b=16"<<"¡A\t"<<"c=7"<<"\t"<<"¥­§¡="<<avg(9,16)<<"\n";
    cout<<"a=8"<<"¡A\t"<<"b=17"<<"¡A\t"<<"c=3"<<"\t"<<"¥­§¡="<<avg(8,17,3)<<"\n";
	system("pause");
	return 0;
}
double avg(int a,int b,int c)
{
	return (a+b+c)/3.0;
}
