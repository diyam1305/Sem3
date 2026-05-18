//duplicate
#include<stdio.h>
void del(int a[], int n);
void main()
{
	int i, n;
	printf("Enter n:");
	scanf("%d", &n);
	int a[n];
	
	printf("Enter values here:");
	for(i=0; i<n; i++)
	{
		scanf("%d", &a[i]);
	}
	del(a,n);
}
void del(int a[], int n)
{
	int i, j, flag=0;
	n-=1;
	for(i=0; i<n; i++)
	{
		for(j=0; j<n; j++)
		{
			if(i!=j)
			{
				while(j<=n-1)
				{
					a[j]=a[j+1];
					j++;
				}
				flag++;
				break;
			}
			else
			{
				continue;
			}
		}
	}
	if(flag==0)
	{
		printf("Duplicate number/s not found!!");
	}
	else
	{
		printf("After deletion of duplicate numbers:");
		for(i=0; i<n-1; i++)
		{
			printf("%d", a[i]);
		}
	}
}
