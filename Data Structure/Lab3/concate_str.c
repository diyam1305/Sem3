//concat
#include<stdio.h>
void concat(char[], char[], char[]);
void main()
{
	char str1[30], str2[30], str3[30];
	printf("Enter your first string :");
	gets(str1);

	printf("Enter your second string:");
	gets(str2);
	concat(str1, str2, str3);

	printf("Your merged string is:");
	puts(str3);
}
void concat(char *str1, char *str2, char *str3)
{
	while(*str1 != '\0')
	{
		*str3 = *str1;
		str3++;
		str1++;
	}
	while(*str2 != '\0')
	{
		*str3 = *str2;
		str3++;
		str2++;
	}
	*str3 = '\0';
}
