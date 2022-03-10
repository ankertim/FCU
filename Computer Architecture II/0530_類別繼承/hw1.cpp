#include <iostream>
#include <cstdlib>
using namespace std;
class CShape{
	public:
		float width,height;
};
class CRectangle:public CShape{
	public:
		float A;
		CRectangle(float w,float h)
		{
			width=w;
			height=h;
		}
		void show(){
			cout<<"Rectangle\n";
			cout<<"width: "<<width<<endl;
			cout<<"height: "<<height<<endl;
			cout<<"Area: "<<A<<endl; 
		}
		void Area(){
			A=(width*height);
		}
};
class CTriangle:public CShape{
	public:
		float A;
		CTriangle(float w,float h)
		{
			width=w;
			height=h;
		}
		void show(){
			cout<<"Triangle\n";
			cout<<"width: "<<width<<endl;
			cout<<"height: "<<height<<endl;
			cout<<"Area: "<<A<<endl; 
		}
		void Area(){
			A=(width*height)/2;
		}
		
};
int main()
{
	CRectangle A(12,14.5);
	CTriangle B(17,13);
	A.Area();
	B.Area();
	A.show();
	cout<<"---------------\n";
	B.show();
	system("pause");
	return 0;
}

