#include<stdio.h>
void array(int a[], int pos, int value, int n);
void main()
{
	int pos, i, value, n;
	printf("Enter size of array:");
	scanf("%d", &n);
	
	int a[n+1];
	
	printf("Enter elements:");
	for(i=1; i<n+1; i++)
	{
		scanf("%d", &a[i-1]);
	}
	printf("Enter position:");
	scanf("%d", &pos);
	pos=pos-1;
	
	printf("Enter value:");
	scanf("%d", &value);
	
	if(pos>n)
	{
		printf("Please enter valid position:");
	}
	else
	{
		array(a, pos, value, n);
	}
}

void array(int a[], int pos, int value, int n)
{
	int i, temp;
	temp=n;
	while(temp>=pos)
	{
		a[temp+1]=a[temp];
		temp--;
	}
	a[pos]=value;
	for(i=0; i<n+1; i++)
	{
		printf("%d", a[i]);
	}
}
