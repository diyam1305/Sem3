#include<stdio.h>
#include<string.h>
void reverse(char *, char *);
void main()
{
	char s1[50], s2[50];
	printf("Enter string:");
	gets(s1);
	reverse(s1, s2);
	puts(s2);
}
void reverse(char *s1, char *s2)
{
	int i=0;
	while(*s1 != '\0')
	{
		s1++;
		i++;
	}
	s1--;
	while(i > 0)
	{
		*s2 = *s1;
		s2++;
		s1--;
		i--;
	}
}
