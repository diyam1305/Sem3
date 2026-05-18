#include<stdio.h>
void linear_search(int[], int, int);
void main()
{
	int i, a[50], n, x;
	printf("Enter value of n:");
	scanf("%d", &n);
	printf("Enter elements:");
	for(i=0; i<n; i++)
	{
		scanf("%d", &a[i]);
	}
	printf("Enter number to search:");
	scanf("%d", &x);
	linear_search(a, n, x);
}
void linear_search(int a[], int n, int x)
{
	int i, flag=0;
	for(i=0; i<n; i++)
	{
		if(a[i]==x)
		{
			flag=1;
			break;
		}
	}
	if(flag==1)
	{
		printf("Serach is successfull\n");
	}
	else
	{
		printf("Search is unsuccessfull\n");
	}
}
