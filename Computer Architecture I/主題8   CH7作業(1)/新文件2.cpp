#include <iostream>
#include <cstdlib>
using namespace std;
int area(int i);
int area(int i,int j);
float area(float i);
int main()
{
	int a,b,c;
	float d;
	cout<<"�п�J���������G";
	cin>>a;
	cout<<"����έ��n���G"<<area(a)<<endl;
	cout<<"============\n";
	cout<<"�п�J����Ϊ��G";
	cin>>b;
	cout<<"�п�J����μe�G";
	cin>>c;
	cout<<"����έ��n���G"<<area(b,c)<<endl;
	cout<<"============\n";
	cout<<"�п�J��b�|�G";
	cin>>d;
	cout<<"��έ��n���G"<<area(d);
	system("pause");
	return 0;
}
int area(int i)
{
	return i*i;
}
int area(int i,int j)
{
	return i*j;
}
float area(float i)
{
	return i*i*3.14;
}
