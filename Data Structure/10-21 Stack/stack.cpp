#include <stdio.h>
#include <stdlib.h>
#define MAX 120

struct MyStack{
	int top;           // 堆疊頂端 
	char a[MAX];       // 堆疊主體
	
	bool IsEmpty();    // 判斷堆疊是否為空，是則回傳 1 ，否則 0
	bool IsFull();     // 判斷堆疊是否為滿，是則回傳 1 ，否則 0
	void Push(char);   // 將一個字元傳進堆疊中
	char Pop();        // 將一個字元從堆疊中拿出並回傳
	MyStack()		   // 建構子
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
	//num = 取得讀取的char數量 (作業num:110,index:109='\0')
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
	printf("讀到的檔案:\n%s\n",str);
	MyStack S;
	int i=0;
	bool e; //e 是否存在
	//消除 es string 
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
	printf("---即將寫檔(消除過es字串)---\n%s\n",S.a);
	//write file
	FILE *fout=fopen("out.txt","w");
	i=0;	
	while(S.a[i] !='\0')
	{
		fprintf(fout, "%c", S.a[i]);
		i++;
	}
	fprintf(fout, "\0");
	printf("---已寫檔到(out.txt)---\n"); 
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

