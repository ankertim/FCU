#include <iostream>
#include <cstdlib>
using namespace std;
int main(void)
{
	float a,b,c,BMI;  //a=身高，b=體重，c=BMI 
	cout<<"依序輸入身高(公尺)，體重(公斤)\n";
	cin>>a>>b;
	cout<<"身高="<<a<<"公尺\n";
	cout<<"體重="<<b<<"公斤\n";
	c=b/(a*a);
	BMI=c;
	if(c>=18.5&&c<24)
	   {
	   	cout<<"體重標準"<<"\n";
	   }
	else
	    {
		  if(c<18.5)
	          {
	        	  cout<<"體重過輕";
			  }
	       else
		      {
		    	  cout<<"體重過重";
			  } 
		}
	system("pause");
	return 0;
}
