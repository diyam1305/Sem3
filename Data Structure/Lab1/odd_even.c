#include<stdio.h>
void num(int);
void main()
{
	int n; 
	printf("Enter value of n:");
	scanf("%d", &n);
	num(n);
}
void num(int n)
{
	if(n%2==0)
	{
		printf("Number is even");
	}
	else
	{
		printf("Number is odd");
	}
}
