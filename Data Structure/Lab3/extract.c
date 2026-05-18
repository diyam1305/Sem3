//extract
#include<stdio.h>
void retrieve(char[], int, int);
void main()
{
	char str1[30];
	int pos, n;
	printf("Enter your string:");
	gets(str1);
	printf("Enter position and number:");
	scanf("%d %d", &pos, &n);
	retrieve(str1, pos, n);
}
void retrieve(char str1[], int p, int n)
{
	char str2[30];
	int i=0;
	p-=1;
	
	while(n!=0)
	{
		str2[i]=str1[p];
		i++;
		p++;
		n--;	
	}
	str2[i]='\0';
	printf("Substring is:");
	puts(str2);
}
