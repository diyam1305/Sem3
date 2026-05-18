//delete a no at given index
#include<stdio.h>
void array(int a[], int pos, int n);
void main()
{
	int pos, i, n;
	printf("Enter size of array:");
	scanf("%d", &n);
	
	int a[n];
	for(i=0; i<n; i++)
	{
		scanf("%d", &a[i]);
	}
	printf("Enter position:");
	scanf("%d", &pos);
	
	if(pos>n)
	{
		printf("Please enter correct number");
	}
	else
	{
		array(a, pos, n);
	}
}
void array(int a[], int pos, int n)
{
	int i, temp;
	temp=pos-1;
	while(temp<n)
	{
		a[temp]=a[temp+1];
		temp++;
	}
	for(i=0; i<n-1; i++)
	{
		printf("%d", a[i]);
	}
}
