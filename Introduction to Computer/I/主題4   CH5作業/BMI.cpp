#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	float a,b,c,BMI;  //a=�����Ab=�魫�Ac=BMI 
	cout<<"�̧ǿ�J����(����)�A�魫(����)\n";
	cin>>a>>b;
	cout<<"����="<<a<<"����\n";
	cout<<"�魫="<<b<<"����\n";
	c=b/(a*a);
	BMI=c;
	if(c>=18.5&&c<24)
	   {
	   	cout<<"�魫�з�"<<"\n";
	   }
	else
	    {
		  if(c<18.5)
	          {
	        	  cout<<"�魫�L��";
			  }
	       else
		      {
		    	  cout<<"�魫�L��";
			  } 
		}
	system("pause");
	return 0;
}
