#include <stdio.h>
#include <stdlib.h>
int func(int);
int main()
{
	int num, i;
	printf("Input a number for Fibonacii : ");
	scanf("%d",&num);
	for(i = 1; i<=num; i++){
		
		printf("fib(%d): %d\n", i, func(i));
	}
	
	
	return 0;
} 
int func(int n)
{
	if(n == 1)
	  return 1;
	else if(n == 2)
	  return 1;
	else
	  return func(n-2) + func(n-1);
	
} 
