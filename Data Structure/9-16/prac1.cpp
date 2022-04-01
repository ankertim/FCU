#include <stdio.h>
#include <stdlib.h>
int func(int);
int main()
{
	int num;
	printf("Please input the value of N : ");
	scanf("%d",&num);
	printf("%d! = %d", num, func(num));
	return 0;
 } 
 
 int func(int n)
{
 	if(n == 1)
 	  return 1;
 	else  
 	  return func(n-1)*n;
 }
