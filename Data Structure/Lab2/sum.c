#include<stdio.h>
int sum(int a[], int n);
void main()
{
	int n, i;
	int ans;
	printf("Enter the value of n:");
	scanf("%d", &n);
	int a[n];
	printf("Enter your array element:");
	for(i=0; i<n; i++)
	{
		scanf("%d", &a[i]);
	}
	ans = sum(a,n);
	printf("Total is: %d", ans);
}
int sum(int a[], int n)
{
	int sum =0, i;
	for(i=0; i<n; i++)
	{
		sum = sum + a[i];
	}
	return sum;
}


