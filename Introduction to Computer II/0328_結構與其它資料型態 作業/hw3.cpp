#include <iostream>
#include <cstdlib>
#include <cmath>
typedef struct
{
	double x;
	double y;
}point;
using namespace std;
int main()
{
	double square;
    point p1,p2;
	p1.x=p1.y=0;
	p2.x=0;
	p2.y=3;
	cout<<"p1=("<<p1.x<<","<<p1.y<<"), ";
	cout<<"p2=("<<p2.x<<","<<p2.y<<")"<<endl;
	int a=(p1.x-p2.x)*(p1.x-p2.x);
	int b=(p1.y-p2.y)*(p1.y-p2.y);
	cout<<"distance(p1,p2)= "<<sqrt(a+b)<<endl;
	system("pause");
	return 0;
} 
