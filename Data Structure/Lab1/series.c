#include<stdio.h>
void series(int);
void main()
{
	int n;
	printf("Enter value of n:");
	scanf("%d", &n);
	series(n);
}
void series(int n)
{
	int sum, sum1=0, i, j;
	for(i=1; i<=n; i++)
	{
		sum=0;
		for(j=1; j<=i; j++)
		{
			sum=sum+j;
		}
		sum1=sum1+sum;
	} 
	printf("Sum of series is:%d", sum1);
}
