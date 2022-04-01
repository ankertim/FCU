#include <stdio.h>
#include <stdlib.h>
#define MAX 120

struct MyStack{
	int top;           // ���|���� 
	char a[MAX];       // ���|�D��
	
	bool IsEmpty();    // �P�_���|�O�_���šA�O�h�^�� 1 �A�_�h 0
	bool IsFull();     // �P�_���|�O�_�����A�O�h�^�� 1 �A�_�h 0
	void Push(char);   // �N�@�Ӧr���Ƕi���|��
	char Pop();        // �N�@�Ӧr���q���|�����X�æ^��
	MyStack()		   // �غc�l
	{
		top = -1;
		for(int i=0; i<MAX; i++){
			a[i]=' ';
	    }
	}
};

void practice();
bool TestStr(char*);
void TestEsStr(char*);

//=========================================
int main() {
	// practice
	printf("practice:\n\n");
	practice();
	printf("\n=================================\n");
	// homework
    MyStack S;
    char str[120]=" ";
    int num=0;
    FILE *fptr=fopen("5.txt","r");
    //read file
    while(!feof(fptr))
	{
		fscanf(fptr,"%c",&str[num]);
		num++;	
	}
	//num = ���oŪ����char�ƶq (�@�~num:110,index:109='\0')
	TestEsStr(str);
	
	return 0;	
}

void practice()
{
	FILE *fptr=fopen("20191021.txt","r");
	char str[MAX];
	while(!feof(fptr))
	{
		fscanf(fptr,"%s",str);
		printf("%s\n", str);
		bool valid=TestStr(str);
		if(valid==true)
			printf("Correct!!\n");
		else
			printf("Error!!\n");
	}
	fclose(fptr);
}
//=========================================
bool MyStack::IsEmpty()
{
	if(top==-1)
		return true;
	else
		return false;
	
}
//=========================================
bool MyStack::IsFull()
{
	if(top==MAX-1)
		return true;
	else
		return false;	
}
//=========================================
void MyStack::Push(char ch)
{
	if(IsFull()!=true)
	{
		top++;
		a[top]=ch;
	}
	else
	{
		printf("Stack is Full!!\n");
	}
	
}
//=========================================
char MyStack::Pop()
{
	char ch;
	if(IsEmpty()!=true)
	{
		ch=a[top];
		top--;
		return ch;
	}
	else
	{
		printf("Stack is Empty!!\n");
		return 0;
	}
	
}
//=========================================
void TestEsStr(char* str)
{
	printf("Ū�쪺�ɮ�:\n%s\n",str);
	MyStack S;
	int i=0;
	bool e; //e �O�_�s�b
	//���� es string 
	while(str[i]!='\0')
	{
		S.Push(str[i]);
		i++;
		if(S.a[S.top]=='e') e=true;
		if(S.a[S.top]=='s' && e==true){
			while(S.Pop()!='e'){}
			e=false;
		}
	}
	S.Push(str[i]); //read '\0' to S.a[]
	i=0;
	printf("---�Y�N�g��(�����Les�r��)---\n%s\n",S.a);
	//write file
	FILE *fout=fopen("out.txt","w");
	i=0;	
	while(S.a[i] !='\0')
	{
		fprintf(fout, "%c", S.a[i]);
		i++;
	}
	fprintf(fout, "\0");
	printf("---�w�g�ɨ�(out.txt)---\n"); 
}
//=========================================
bool TestStr(char* str)
{
	MyStack S;
	int i=0;
	while(str[i]!='\0')
	{
		if(str[i]=='('||str[i]=='['||str[i]=='{')
			S.Push(str[i]);
		else
		{
			char ch;
			if(S.IsEmpty()!=true)
			{	
				ch=S.Pop();			
				if(str[i]==')')
				{				
					if(ch!='(') 
						return false;
				}					
				else if(str[i]==']')
				{
					if(ch!='[')
						return false;
				}
				else if(str[i]=='}')
					if(ch!='{')
						return false;													
			}
			else
				return false;		
		}
		i++;	
	}
	if(S.IsEmpty()==false)
		return false;
	else
		return true;
}

