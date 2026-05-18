#include<stdio.h>
#include<string.h>
void strupper(char*, char*);
void strlower(char*, char*);
void main()
{
	char s1[50], s2[50], s3[50];
	printf("Enter original string:");
	gets(s1);
	
	strupper(s1, s2);
	strlower(s1, s3);
	
	printf("New converted string is:");
	puts(s2);
	puts(s3);
}	
void strupper(char* s1, char* s2)
{
	while(*s1 != '\0')
	{
		if(*s1 >= 'a' && *s1 <= 'z')
		{
			*s2 = *s1 - 32;
		}
		else
		{
			*s2 = *s1;
		}
		s1++;
		s2++;
	}
	*s2 = '\0';
}
void strlower(char* s1, char* s3)
{
	while(*s1 != '\0')
	{
		if(*s1 >= 'A' && *s1 <= 'Z')
		{
			*s3 = *s1 + 32;
		}
		else
		{
			*s3 = *s1;
		}
		s1++;
		s3++;
	}
	*s3 = '\0';
}
