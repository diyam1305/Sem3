//copy
#include<stdio.h> 
void cpystr(char *, char *);
void main()
{
	char str1[30], str2[30];
	printf("Enter your string:");
	gets(str1);
	cpystr(str1, str2);
	
	printf("Your string is:");
	puts(str2);
}
void cpystr(char *str1, char *str2)
{
	while(*str1 != '\0')
	{
		*str2 = *str1;
		str1++;
		str2++;
	}
}
