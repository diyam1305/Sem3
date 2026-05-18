#include<stdio.h>
void selection_sort(int[], int);
void main()
{
	int i, a[50], n;
	printf("Enter value of n:");
	scanf("%d", &n);
	printf("Enter value of elements:");
	for(i=0; i<n; i++)
	{
		scanf("%d", &a[i]);
	}
	selection_sort(a,n);
}
void selection_sort(int a[], int n)
{
	int i, j, min, temp;
	for(i=0; i<n; i++)
	{
		min=i;
		for(j=i+1; j<n; j++)
		{
			if(a[min]>a[j])
			{
				min=j;
			}
		}
		if(min!=i)
		{
			temp=a[min];
			a[min]=a[i];
			a[i]=temp;
		}
	}
	printf("Array after sorting:");
	for(i=0; i<n; i++)
	{
		printf("%d\n", a[i]);
	}
}
