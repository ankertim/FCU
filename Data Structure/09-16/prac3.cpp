#include <stdio.h>
#include <stdlib.h>
int F(int);
int main()
{
	int number;
	printf("Plz enter a number n: ");
	scanf("%d", &number);
	printf("Result = %d\n", F(number));
	
	return 0;
} 
int F(int n)
{
	if(n == 2){
		return 2;
	}
	return F(n-1) + (n-1)*n;
}
