#include <iostream>
#include <cstdlib>
using namespace std;
#include "head_math.h"
int main()
{
	int a,b,c,d,e,f;
	cout<<"請輸入平行四邊形底:";
	cin>>a;
	cout<<"請輸入平行四邊形高:";
	cin>>b;
	cout<<"平行四邊形面積:"<<PARA(a,b)<<"\n";
	cout<<"輸入梯形上底";
	cin>>c;
	cout<<"輸入梯形下底";
	cin>>d;
	cout<<"梯形高=";
	cin>>e;
	cout<<"面積="<<TRAPEZOID(c,d,e)<<"\n"; 
	cout<<"輸入圓半徑";
	cin>>f;
	cout<<"圓周長="<<PERIPHERY(f)<<"\n";
	cout<<"圓面積="<<VOLUMN(f); 
} 
