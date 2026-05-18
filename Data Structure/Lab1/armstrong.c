#include<stdio.h>
void armstrong(int);
void main()
{
	int n;
	printf("Enter value of n:");
	scanf("%d", &n);
	armstrong(n);
}
void armstrong(int n)
{
	int sum, temp, i, j, count=0, ans, ans1=0, x[n];
	temp=n;
	for(i=0; temp!=0; i++)
	{
		x[i]=temp%10;
		temp=temp/10;
		count++;
	}
	temp=n;
	
	for(i=0; i<count; i++)
	{
		for(j=1, ans=1; j<=count; j++)
		{
			ans=ans*x[i];
		}
		ans1=ans1+ans;
	}
	
	if(ans1==n)
	{
		printf("%d:%d\n", ans1, n);
		printf("Number is armstrong");
	}
	else
	{
		printf("%d!=%d\n", ans1, n);
		printf("Number is not armstrong");
	}
}
