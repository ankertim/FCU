#include<stdio.h> 
#include<stdlib.h>

void perm(char ch[], int begin, int end);
void swap(char ch[], int, int);

 
int main()
{
	int num, i;
	char ch[80];
	printf("Please input a number: ");
	scanf("%d", &num);
	for(i=0; i<num; i++)  //利用ascii code 完成 a-z字元輸入到陣列 
	  ch[i] = 'a'+ i;
	perm(ch, 0,num-1); 
	
	return 0;
}

void perm(char ch[], int begin, int end)
{
	int i;
	if(begin==end)
	{
		for(i=0;i<=end;i++)
			printf("%c ",ch[i]);
		printf("\n");
	}
	else
	{
		for(i=begin;i<=end;i++)
		{
			swap(ch, begin, i);
			perm(ch, begin+1, end);
			swap(ch, begin, i);			
		}
	}
	
}

void swap(char ch[], int i, int j)
{
	char tmp;
	tmp=ch[i];
	ch[i]=ch[j];
	ch[j]=tmp;
	
}

