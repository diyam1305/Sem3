//insert
#include<stdio.h>
void insert(char*, int, char*, char*);
void main()
{
	char new_str[50];
	char str1[30]="Hello Welcome";
	char str2[10]="World";
	int pos=10;
	insert(str1, pos, str2, new_str);
	printf("New string is:");
	puts(new_str);
}
void insert(char* str1, int p, char* str2, char* temp)
{
	while(p!=0)
	{
		*temp++=*str1++;
		p--;
	}
	
	while(*str2!='\0')
	{
		*temp++=*str2++;
	}
	
	while(*temp!='\0')
	{
		*temp++=*str1++;
	}
}
