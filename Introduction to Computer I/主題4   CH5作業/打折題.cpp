#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	float a;
	cin>>a;
	cout<<"���O���B��"<<a<<"\n";
	if(a>=1000&&a<3000)
	  {
	   	cout<<"����I�����B"<<a*95/100;
	  }
	else
	      {
		    if(a>=3000&&a<=4999)
	         {
	        	cout<<"����I�����B"<<a*92/100;
			 }
		    else
		     {
		     	if(a>=5000&&a<=9999)
		     	  {
		     	  	cout<<"����I�����B"<<a*90/100;
				  }
				else if(a>=10000)
				   {
				   	cout<<"����I�����B"<<a*85/100;
				   }   
			 }
	      }  
	system("pause");
	return 0;        	 
}
