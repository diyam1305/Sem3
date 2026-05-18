#include<stdio.h>
void factor(int);
void main()
{
	int n;
	printf("Enter value of n:");
	scanf("%d", &n);
	factor(n);
}
void factor(int n)
{
	int i, ans=1;
	for(i=1; i<=n; i++)
	{
		if(n%i==0)
		{
			printf("%d", i);
			printf("\n");
		}
	}
}
