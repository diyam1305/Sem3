#include<stdio.h>
void prime(int);
void main()
{
	int n;
	printf("Enter value of n:");
	scanf("%d", &n);
	prime(n);
}
void prime(int n)
{
	int i;
	for(i=2; i*i<=n; i++)
	{
		if(n%i==0)
		{
			printf("Number is not prime");
		}
		else
		{
			printf("Number is prime");
		}
	}
}
