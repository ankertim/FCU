#include <iostream>
#include <cstdlib>
#include <cmath>
using namespace std;
int main()
{
	int n,x,y,sum;
	cout<<"�P�_�b��νd��\n"<<endl;
	cin>>n;
	if(n<1||n>10){
		cout<<"��J���~\n";
	}
	else{
		for(int i=1;i<=n;i++){
		  cin>>x>>y;
		  sum=sqrt(pow(x,2)+pow(y,2));
		  if(sum<=100){
		  	cout<<"inside\n";
		  }
		  else{
		  	cout<<"outside\n";
		  }
	}
	}

	system("pause");
	return 0;
}
