#include <stdio.h>
#include <stdlib.h>
int main()
{
	int a=0,b,c;
	printf("¿é¤J´ú¸ê: ");
	scanf("%d",&a);
	for(int i=1;i<=a;i++)
	{
		int d=0;
		scanf("%d %d",&b,&c);
		if(b%2==0)
		 b+=1;
		if(c%2==0)
		 c-=1; 
		while(b<=c)
		{
			d+=b;
			b+=2;
		}
		printf("Case %d: %d\n",i,d);
	}
	system("pause");
	return 0;
} 
