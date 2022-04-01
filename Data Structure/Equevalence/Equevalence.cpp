#include <stdlib.h>
#include <stdio.h>
#define MAX_SIZE 12
struct node {
		int data;
		node* link;
};

struct equivalence{
	node* seq[MAX_SIZE];
	void eqRead(char* );			//從檔案讀取資料，並且儲存至seq陣列中。
	void add(int, int);				//新增一筆等價關係之資料。
	void ShowList( );				//顯示目前陣列中等價關係之鏈結串列。
	void ShowClass(); 				//顯示目前等價類。
	equivalence()
	{
		for(int i=0;i<MAX_SIZE;i++)
		{
			seq[i] = NULL;
		}
	}
};

int main(){
	equivalence Equ;
	Equ.eqRead("1.txt");
	Equ.ShowList();
	printf("============================\n");
	Equ.ShowClass();
	return 0;
}
//=============================================================================
void equivalence::eqRead(char* filename)
{
	int num1, num2;
	FILE *fptr=fopen(filename,"r");
	while(!feof(fptr))
	{
		fscanf(fptr,"%d %d", &num1, &num2);
		add(num1, num2);
	}
	
}
//=============================================================================
void equivalence::add(int a,int b)
{
	node *temp=NULL;
	temp=(node*)malloc(sizeof(node));
	temp->data=b;
	temp->link=seq[a];
	seq[a]=temp;
	
	temp=(node*)malloc(sizeof(node));
	temp->data=a;
	temp->link=seq[b];
	seq[b]=temp;
	
}
//=============================================================================
void equivalence::ShowList()
{
	int i;
	node *temp=NULL;
	for(i=0;i<MAX_SIZE;i++)
	{
		printf("head[%2d]->",i);
		temp=seq[i];
		while(temp!=NULL) 
		{ 
			printf("%2d->",temp->data);
			temp=temp->link;
		} 
		printf("NULL\n");
	}
	
}
//=============================================================================
void equivalence::ShowClass()
{
	bool out[MAX_SIZE]={0};
	node *current=NULL, *next=NULL, *top=NULL;
	int i=0;
	for(i=0;i<MAX_SIZE;i++)
	{		
		if(out[i]==0)
		{
			current=seq[i];	
			printf("New Class: <");		
			while(1)
			{				
				while(current!=NULL)
				{
					if(out[current->data]==0)
					{
						out[current->data]=1;
						printf("%2d, ", current->data);
						next=current->link;
						current->link=top;
						top=current;
						current=next;
					}
					else
					{
						current=current->link;
					}
				}
				if(top!=NULL)
				{					
					current=seq[top->data];					
					top=top->link;					
				}
				else
				{
					printf("\b\b>\n");
					break;
				}			
			}
		}
	}	
}
 
 
