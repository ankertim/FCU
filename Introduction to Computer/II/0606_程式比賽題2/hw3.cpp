#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	int n,a1,a2,b1,b2,c1,c2;
	char e;
	cin>>n;
	for(int i=1;i<=n;i++){
		cin>>a1>>e>>a2>>e>>b1>>e>>b2;
		c1=a1*b2+b1*a2;
		c2=a2*b2;
		cout<<c1<<"/"<<c2;
	}
	system("pause");
	return 0;
}
