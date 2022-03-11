#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	float a;
	cin>>a;
	cout<<"消費金額為"<<a<<"\n";
	if(a>=1000&&a<3000)
	  {
	   	cout<<"應支付的金額"<<a*95/100;
	  }
	else
	      {
		    if(a>=3000&&a<=4999)
	         {
	        	cout<<"應支付的金額"<<a*92/100;
			 }
		    else
		     {
		     	if(a>=5000&&a<=9999)
		     	  {
		     	  	cout<<"應支付的金額"<<a*90/100;
				  }
				else if(a>=10000)
				   {
				   	cout<<"應支付的金額"<<a*85/100;
				   }   
			 }
	      }  
	system("pause");
	return 0;        	 
}
