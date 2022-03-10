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
	cout<<"請輸入正方形邊長：";
	cin>>a;
	cout<<"正方形面積為："<<area(a)<<endl;
	cout<<"============\n";
	cout<<"請輸入長方形長：";
	cin>>b;
	cout<<"請輸入長方形寬：";
	cin>>c;
	cout<<"長方形面積為："<<area(b,c)<<endl;
	cout<<"============\n";
	cout<<"請輸入圓半徑：";
	cin>>d;
	cout<<"圓形面積為："<<area(d);
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
