#include <stdio.h>
#include <stdlib.h>

#define MAX 800
struct MyString 
{	
	char s[MAX];
    MyString(char*);
    MyString() {}
	void Show(void);
    int Length(void);
    int IndexOf(char *);
    MyString SubString(const char *, int, int);
    void Assign(const char *);
    int InsertOf(char *, int);       
    MyString operator+(const char*);
    MyString operator+(MyString);
    MyString operator+(int);
    char* c_str()
	{
		return s;
	};
    
	void operator=(const char*);
};

int main()
{
	FILE *fptr=fopen("input.txt","r");
	int size=0, num;
	MyString text;
	while(!feof(fptr))
	{		
	    //printf("1");
		fscanf(fptr,"%c", &text.s[size]);		
		size++;
	}
	fclose(fptr);
	
	num = 0;
	while(text.s[num] != '\0')
	{
		 printf("%c",text.s[num]);
		 if(text.s[num]=='.' || text.s[num]=='?' || text.s[num]=='!')
		 	printf("\n"); 
		 num++;
	}
	
	printf("\n===========================================\n");
	MyString InputStr("This is a book.");
	InputStr.Show();
	printf("\n");
	
	MyString InputStr2;
	InputStr2.Assign("This is not a book.");
	InputStr2.Show();	
	printf("\n");
	
	MyString InputStr3;
	InputStr3="This is not not a book." ;
	InputStr3.Show();
	printf("\n") ;
	
	MyString InputStr4;
	InputStr4 = InputStr + " Oh, no..." ;
	
	InputStr4.Show();
	printf("\n") ;
	
	MyString InputStr5;
	InputStr5 = InputStr + InputStr2+1234;
	
	InputStr5.Show();
	printf("\n");
	printf("%s\n",InputStr5.c_str());
    return 0;
}

MyString::MyString(char *temp)
{
	int i=0;
	while(temp[i]!='\0')
	{
		s[i]=temp[i];
		i++;
	}
	s[i]='\0';
}
void MyString::Show()
{
	printf("%s",s);
}

int MyString::Length()
{
	int i=0;
	while(s[i]!='\0')
		i++;
	return i;
}

int MyString::IndexOf(char *temp)
{
	int i=0;
	int j=0;

}

MyString MyString::SubString(const char *, int, int)
{

}

void MyString::Assign(const char *temp)
{
	int i=0;
	while(temp[i]!='\0')
	{
		s[i]=temp[i];
		i++;
	}
	s[i]='\0';
}

void MyString::operator=(const char* temp)
{	
	int i=0;
	while(temp[i]!='\0')
	{
		s[i]=temp[i];
		i++;
	}
	s[i]='\0';
}


MyString MyString::operator+(const char* temp)
{
	int i=0;
	int len;
	MyString C;	
	C=s;
	len=Length();
	
	while(temp[i]!='\0')
	{
		C.s[len+i]=temp[i];
		i++;
	}
	C.s[len+i]='\0';
	return C;
}

MyString MyString::operator+(MyString temp)
{
	int i=0;
	int len;
	MyString C;	
	C=s;
	len=Length();
	
	while(temp.s[i]!='\0')
	{
		C.s[len+i]=temp.s[i];
		i++;
	}
	C.s[len+i]='\0';
	return C;
}

MyString MyString::operator+(int num)
{
	MyString C;
	int i=0,j=0;
	int temp=0;
	C=s;
	i=Length();
	
	while(num!=0)
	{		
		temp=temp*10+num%10;
		num=num/10;		
	}
	printf("%d\n",temp);
	while(temp!=0)
	{
		C.s[i+j]=temp%10+'0';
		temp=temp/10;
		j++;
	}
	C.s[i+j]='\0';
	return C;
}

int MyString::InsertOf(char *, int)
{
	

}
