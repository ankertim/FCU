#include<stdio.h> 
#include<stdlib.h>
void perm(char ch[], int begin, int end);

int main()
{
	int num, i;
	char ch[30]={};
	printf("Please input a number: ");
	scanf("%d", &num);
	perm(ch, 0, num-1);
	return 0;
}



void perm(char ch[], int begin, int end)
{
	int i=0,j;
	char zero = '0';
	char one = '1';
	if(begin==end+1)
	{
		for(j=0; j<=end; j++)
			printf("%c ",ch[j]);
		printf("\n");
	}
	else
	{
			ch[begin] = zero;
			perm(ch, begin+1, end);
			ch[begin] = one;	
			perm(ch, begin+1, end);
	}
}

