#include<stdio.h>
void read(int a[], int n);
void display(int a[], int n);
void main()
{
	int n;
	printf("Enter size of array:");
	scanf("%d", &n);
	int a[n];
	read(a, n);
	display(a, n);
}
void read(int a[], int n)
{
	int i;
	printf("Enter elements of an array:");
	for(i=0; i<n; i++)
	{
		printf("\nElement-%d:", i);
		scanf("%d", &a[i]);
	}
}
void display(int a[], int n)
{
	int i;
	printf("Elements in an array are:");
	for(i=0; i<n; i++)
	{
		printf("%d", a[i]);
	}
}
