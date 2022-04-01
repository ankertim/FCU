#include <iostream>
#include <cstdlib>
#include <cstring>
using namespace std;
void reverse(char *);
int main()
{
	char *ptr[3]={"Tom","Lily","James Lee"},*p1,*p2,*p3;
	cout<<"-----------\n­ì©l¦r¦ê\n-----------\n";
	for(int i=0;i<3;i++)
	{
		cout<<*(ptr+i)<<endl;
	}
	p1=*(ptr+0);
	p2=*(ptr+1);
	p3=*(ptr+2);
	cout<<"-----------\n­Ë¦L«á¦r¦ê\n-----------\n";
	reverse(p1);
	reverse(p2);
	reverse(p3);
	system("pause");
	return 0;
} 
void reverse(char *p)
{ 
    int len=strlen(p);
    for(int i=len-1;i>=0;i--)
    {
	   cout<<*(p+i);
	}
	cout<<endl;
}
