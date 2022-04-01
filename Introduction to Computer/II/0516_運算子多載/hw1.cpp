#include <iostream>
#include <cstdlib>
#include <cmath>
using namespace std;
class Point
{
	public:
		char id;
		double x,y;
		Point(char id,double a,double b):id(id),x(a),y(b)
		{}
		double operator+(const Point &bi)
		{
			double a;
			a=sqrt((pow(x-bi.x,2))+pow(y-bi.y,2));
			return a;
		}
		double operator/(const Point &bi)
		{
			double a;
			a=(y-bi.y)/(x-bi.x);
			return a;
		}
		void show()
		{
			cout<<"Point "<<id<<": ("<<x<<","<<y<<")\n";
		}
};
int main()
{
	Point A('A',0,3);
	Point B('B',3,5);
	A.show();
	B.show();
	cout<<"hypotenuse : "<<A+B<<endl;
	cout<<"Slope : "<<A/B<<endl;
	system("pause");
	return 0;
}
