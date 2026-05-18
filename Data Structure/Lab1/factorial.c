#include<stdio.h>
void fact(int);
void main()
{
	int n;
	printf("Enter value of n:");
	scanf("%d", &n);
	fact(n);
}
void fact(int n)
{
	int i, fact=1;
	for(i=1; i<=n; i++)
	{
		fact=fact*i;
	}
	printf("Factorial of given number is:%d", fact);
}
