#include <stdio.h>
#include <stdlib.h>
int f(int);
int main()
{
	int number;
	printf("Plz enter a number n: ");
	scanf("%d", &number);
	printf("f(%d) = %d", number, f(number));
	return 0;
}
int f(int n)
{
	if(n == 0)
	  return 3;
	else
	 return 2*f(n-1)-5;
	
}
