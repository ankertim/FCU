#include <iostream>
#include <cstdlib>
using namespace std;
class CBox
{
	public:
		int length;
	    int width;
	    int height;
	    int volume(int a,int b,int c)
	    {
			return a*b*c;
	    }
	    int surfaceArea(int a,int b,int c)
	    {
			return a*b*2+a*c*2+b*c*2;
	    }
};
int main()
{
	CBox A;
	A.length=10;
	A.width=12;
	A.height=13;
	cout<<"��:"<<A.length<<endl;
	cout<<"�e:"<<A.width<<endl;
	cout<<"��:"<<A.height<<endl;
	cout<<"��n:"<<A.volume(A.length,A.width,A.height)<<endl;
	cout<<"���n:"<<A.surfaceArea(A.length,A.width,A.height)<<endl;
	system("pause");
	return 0;
}
