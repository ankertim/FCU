#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	float a[3][5]={{33,32,56,45,33},{77,33,68,45,23},{43,55,43,67,65}};
	float sale[5]={12,16,10,14,15};
	float sum[]={0},asd[5]={0},max=0;//sum為人，asd為產品 
	cout<<"銷售員1的銷售量為 33 32 56 45 33"<<endl; 
	cout<<"銷售員2的銷售量為 77 33 68 45 23"<<endl; 
	cout<<"銷售員3的銷售量為 43 55 43 67 65"<<endl<<"\t"<<endl; 
	cout<<"(a)每個銷售員銷售總金額如下:\n";
	for(int i=0;i<3;i++)
	{
		for(int j=0;j<5;j++)
		{
			sum[i]=sum[i]+a[i][j]*sale[j];
		}
	    
	}
	cout<<"銷售員1的銷售總金額 "<<sum[0]<<endl;
	cout<<"銷售員2的銷售總金額 "<<sum[1]<<endl;
	cout<<"銷售員3的銷售總金額 "<<sum[2]<<endl<<"\t"<<endl;
	cout<<"(b)每項產品銷售總金額如下:\n";
	for(int k=0;k<5;k++)
	{
		for(int h=0;h<3;h++)
		{
			asd[k]+=a[h][k]*sale[k];
		}
	}
	cout<<"產品A的銷售總金額 "<<asd[0]<<endl;
	cout<<"產品B的銷售總金額 "<<asd[1]<<endl;
	cout<<"產品C的銷售總金額 "<<asd[2]<<endl;
	cout<<"產品D的銷售總金額 "<<asd[3]<<endl;
	cout<<"產品E的銷售總金額 "<<asd[4]<<endl<<"\t"<<endl;
	for(int i=0;i<3;i++)
	{
		if(sum[i]>=max)
		{
			max=sum[i];
		}
	}
	if(max==sum[0])
		cout<<"(c)業績最好的銷售員：銷售員1";
	else if(max==sum[1])
	    cout<<"(c)業績最好的銷售員：銷售員2";
	else if(max==sum[2])
	    cout<<"(c)業績最好的銷售員：銷售員3"<<endl;
	system("pause");
	return 0;
 } 
