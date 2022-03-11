#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	int n,s,i,j,k,I;
	cin>>n;
	for(int y=1;y<=n;y++){
		cin>>s;
		I=s%60;
		k=(s/60%60);
		j=(s/60/60%24);
		i=(s/60/60/24);
		printf("%02d=%02d,%02d,%02d,%02d",s,i,j,k,I);
	}
	system("pause");
	return 0;
}
