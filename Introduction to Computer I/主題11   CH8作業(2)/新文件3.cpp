#include <iostream>
#include <cstdlib>
using namespace std;
void func(char [],char [],int,int);
int main()
{
	int a,b;
	char f[]={'J','a','c','k','\0'};
	char l[]={'H','u','a','n','g','\0'};
    a=sizeof(f);
    b=sizeof(l);
    func(f,l,a,b);
	system("pause");
	return 0;
	
 } 
 void func(char f[],char l[],int a,int b)
 {
 	int e=2;
 	char fulname[20];
 	for(int i=0;i<a;i++)
 	{
 		if(f[i]=='\0')
 		fulname[i]=' ';
 		else
 		fulname[i]=f[i];
	}
 	for(int i=0;i<b;i++)
 	{
 		fulname[i+a]=l[i];
	}
    cout<<"Your Full Name ¡G"<<fulname;
 	return;
 }
