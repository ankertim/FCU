#include <stdio.h>
#include <stdlib.h>
#define MAX 100

typedef enum {op, val} mytype;

struct data
{
	mytype type;
	int value;
	char oper;
	int priority;
};

struct SplitData
{
	data item[MAX];
	data postitem[MAX];
	int count;
	void Split(char*);
	void ShowInfix();
	void InfixToPost();
	void ShowPostfix();
	int PostToValue();
};

struct MyStack
{
	data a[MAX] ;
	int top ;
	bool IsEmpty() ;
	bool IsFull() ;
	void Push(data da) ;
	data Pop() ;
	data Top() ;
	MyStack()
	{
		top=-1;
	}
};

int main()
{
	int i=0;
	char s[80]="4*2+10-9/3";
	char t[80]="(((1+6)*(100-98))/7)";
	SplitData a,b;
	a.count=0;
	b.count=0;
	a.Split(s);
	a.ShowInfix();
	printf("==========================\n");
	a.InfixToPost();
	printf("Postfix:\n");
	a.ShowPostfix();
	printf("==========================\n");
	printf("ans: %s=",s);
	printf("%d\n", a.PostToValue());
	
	
	return 0;
} 
//=Stack Begin=================================
bool MyStack::IsEmpty()
{
	if(top == -1)
		return true;
	else
		return false;
}
//=============================================
bool MyStack::IsFull()
{
	if(top == MAX - 1)
		return true;
	else
		return false;
}
//=============================================
void MyStack::Push(data da)
{
	if(IsFull())
		printf("The STACK is full");
	else
		a[++top] = da;
}
//=============================================
data MyStack::Pop()
{
	if(IsEmpty())
		printf("The STACK is empty");
	else
		return a[top--];
}
//=============================================
data MyStack::Top()
{
	if(IsEmpty())
		printf("The STACK is empty");
	else
		return a[top];
}

//=Stack End=================================
void SplitData::Split(char *s)
{
	char temp[10];
	int i=0;
	int j=0;
	count=0;
	while(s[i]!='\0')
	{
		switch(s[i])
		{
			case '+':
			case '-':
			case '*':
			case '/':
			case '(':
			case ')':
				temp[j]='\0';
				item[count].type=val;
				item[count].value=atoi(temp);
				count++;
				item[count].type=op;
				item[count].oper=s[i];
				count++;
				i++;
				j=0;
				break;
			default:
				temp[j]=s[i];
				i++;
				j++;
		}
	}
	if(j>0)
	{
		temp[j]='\0';
		item[count].type=val;
		item[count].value=atoi(temp);
		count++;		
	}
	for(i=0;i<count;i++)
	{
		if(item[i].type==op)
		{
			if(item[i].oper=='-'||item[i].oper=='+')			
				item[i].priority=1;
			else if(item[i].oper=='*'||item[i].oper=='/')
				item[i].priority=2;
		}		
	}
}
//=============================================
void SplitData::ShowInfix()
{
	int i=0;
	for(i=0;i<count;i++)
	{
		if(item[i].type==val)
			printf("%d\n",item[i].value);
		else
			printf("%c\n",item[i].oper);
	}
}
//=============================================
void SplitData::InfixToPost()
{
	MyStack s;
	int i=0; //處理 infix item 
	int j=0; //處理 postfix item 
	for(i=0;i<count;i++)
	{
		if(item[i].type==val)
		{
			postitem[j]=item[i]	;
			j++;			
		}
		else
		{
			if(s.IsEmpty()==true)
			{
				s.Push(item[i]);
			}
			else
			{
				if(item[i].priority>s.a[s.top].priority)
				{
					s.Push(item[i]);
				}
				else
				{
					postitem[j]=s.Pop();
					j++;
					s.Push(item[i]);
				}
			}
		}
	}
	while(s.IsEmpty()!=true) 
	{
		postitem[j]=s.Pop();
		j++;		
	}	
}

//=============================================
void SplitData::ShowPostfix()
{
	int i=0;
	for(i=0;i<count;i++)
	{
		if(postitem[i].type==val)
			printf("%d",postitem[i].value);
		else
			printf("%c",postitem[i].oper);
	}
	printf("\n");
}
//=============================================
int SplitData::PostToValue()
{
	MyStack s;
	int i;
	data num1, num2;
	data temp;
	for(i=0;i<count;i++)
	{
		if(postitem[i].type==val)
		{
			s.Push(postitem[i]);
		}
		else
		{
			num2=s.Pop();
			num1=s.Pop();
			temp.type=val;
			switch(postitem[i].oper)
			{
				case '+':
					temp.value=num1.value+num2.value;					
					break;
				case '-':
					temp.value=num1.value-num2.value;
					break;
				case '*':
					temp.value=num1.value*num2.value;
					break;
				case '/':
					temp.value=num1.value/num2.value;
					break;									
			}
			s.Push(temp);
		}
	}
	return s.Top().value;
}
