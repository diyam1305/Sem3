//length
#include<stdio.h>
int length(char []);
void main()
{
	int len;
	char str[50];
	printf("Enter string:");
	gets(str);
	len=length(str);
	printf("Length of string is:%d", len);
}
int length(char *str)
{
	int i=0;
	while(*str!='\0')
	{
		i++;
		str++;
	}
	return i;
}
