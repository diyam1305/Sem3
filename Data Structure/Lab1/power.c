#include<stdio.h>
void power(int, int);
void main()
{
	int p, b;
	printf("Enter value of power:");
	scanf("%d", &p);
	printf("Enter value of base:");
	scanf("%d", &b);
	power(p, b);
}
void power(int p, int b)
{
	int ans=1, i;
	for(i=1; i<=p; i++)
	{
		ans=b*ans;
	}
	printf("Answer is:%d", ans);
}
