#include <stdio.h>
#include <stdlib.h>
int main()
{
	int a=0,a1=0,a2=0,b1=0,b2=0,c1=0,c2=0;
	printf("¿é¤J´ú¸ê: ");
	scanf("%d",&a);
	for(int i=0;i<a;i++)
	{
		scanf("%d %d %d %d %d %d",&a1,&a2,&b1,&b2,&c1,&c2);
		printf("%f %f\n",(float)(a1+b1+c1)/3,(float)(a2+b2+c2)/3);
	}
	system("pause");
	return 0;
}
