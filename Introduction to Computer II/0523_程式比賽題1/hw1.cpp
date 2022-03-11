#include <stdio.h>
#include <stdlib.h>
int main()
{
	int a=0,b=0;
	printf("¿é¤J´ú¸ê: ");
	scanf("%d",&a);
	for(int i=1;i<=a;i++)
	{
		scanf("%d",&b);
		if(b%400==0)
		{
			printf("Bissextile Year\n");
		}
		else
		{
			if(b%100==0)
			{
				printf("Common Year\n");
			}
			else
			{
				if(b%4==0)
				{
					printf("Bissextile Year\n");
				}
				else
				{
					printf("Common Year\n");
				}
			}

		}
	}
	
	system("pause");
	return 0;
}
 
