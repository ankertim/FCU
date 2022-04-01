#include <iostream>
#include <cstdlib>
using namespace std;
class CRect
{
	public:
		double weight;
		int width;
		int height;
		void set(double wg)
		{
			weight=wg;
			width=0;
		}
		void set(int w,int h)
		{
			width=w;
			height=h;
		}
		void set(int w,int h,double wg)
		{
			width=w;
			height=h;
			weight=wg;
		}
		void show()
		{
			cout<<"¼e:"<<width<<endl;
			cout<<"°ª:"<<height<<endl;
			cout<<"­«¶q:"<<weight<<endl;
		}
};
int main()
{
	CRect rect1,rect2,rect3;
	cout<<"rect1\n";
	rect1.set(55.53);
	rect1.show();
	cout<<"--------------\n"<<"rect2\n";
	rect2.set(12,15);
	rect2.show();
	cout<<"--------------\n"<<"rect3\n";
	rect3.set(12,17,35.53);
	rect3.show();
	cout<<"--------------\n";
	system("pause");
	return 0;
}
