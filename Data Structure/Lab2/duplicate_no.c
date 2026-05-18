//duplicate
#include<stdio.h>
void dupli(int a[], int n);
void main()
{
	int i, n;
	printf("Enter values here:");
	scanf("%d", &n);
	int a[n];
	for(i=0; i<n; i++)
	{
		scanf("%d", &a[i]);
	}
	dupli(a,n);
}
void dupli(int a[], int n)
{
	int i, j, flag=0;
	for(i=0; i<n; i++)
	{
		for(j=0; j<n; j++)
		{
			if(i==j)
			{
				j++;
			}
			if(a[i]==a[j])
			{
				printf("This is duplicate number");
				flag++;
				break;
			}
			if(flag>0)
			{
				break;
			}
		}
		if(flag==0)
		{
			printf("This is not duplicate number");
		}
	}
}
