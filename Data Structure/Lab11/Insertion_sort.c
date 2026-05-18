#include<stdio.h>
void insertion_sort(int[], int);
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
	insertion_sort(a, n);
}
void insertion_sort(int a[], int n)
{
	int i, j, key;
	for(i=1; i<n; i++)
	{
		key=a[i];
		j=i;
		while(j>0 && a[j-1] > key)
		{
			a[j]=a[j-1];
			j=j-1;
		}
		a[j]=key;
	}
	printf("Sorted array:");
	for(i=0; i<n; i++)
	{
		printf("%d\n", a[i]);
	}
}
