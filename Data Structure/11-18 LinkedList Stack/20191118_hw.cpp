#include<stdio.h>
#include<stdlib.h>

struct listNode {
	int data; //每一個堆疊的節點都擁有一個整數資料
	listNode *link; //每一個堆疊的節點都擁有一個指標指向下一個節點，假如沒有便等於 NULL
};
struct MyStack {
	listNode *top;
	void Push(int data); //利用 malloc()跟記憶體要空間並加入堆疊中
	int Pop(); //從堆疊中得到一筆資料，並利用 free()函數將空間還給記憶體。
	bool IsEmpty(); //堆疊是否為空，堆疊為空回傳 true，堆疊不為空回傳 false
				    //當 top 指標指向 NULL 的時候為空
				    
	bool IsFull();  //堆疊是否為滿，堆疊為滿回傳 true，堆疊不為滿回傳 false
				    //當與記憶體要空間( malloc() )卻得不到空間的時候為滿
				    //當呼叫 malloc()回傳為 NULL 時，則為要空間失敗
	void Show();
	MyStack() //撰寫建構子，代表產生 MyStack 物件時，Stack 為空的。
	{
		top = NULL;
	}
};


int main()
{
	MyStack a;
	int option=0;
	while(1){
		printf("1.Push\n2.Pop\n3.IsEmpty\n4.IsFull\n5.Exit\noption: ");
		scanf("%d",&option);
		printf("\n");
		switch(option){
			case 1:{
				int c1_da;
				printf("input data: ");
				scanf("%d",&c1_da);
				a.Push(c1_da);
				break;
			}
			case 2:{
				printf("pop: %d\n", a.Pop() );
				break;
			}

			case 3:{
				if(a.IsEmpty())
					printf("The STACK is empty\n");
				else
					printf("The STACK is not empty\n");
				break;
			}
			case 4:{
				if(a.IsFull())
					printf("The STACK is full\n");
				else
					printf("The STACK is not full\n");
				break;
			}
			case 5:{
				//exit(0);
				option=-1;
				break;
			}
		} //end of switch
		if(option==-1)
			break;
		printf("Stack: ");
		a.Show();
		printf("\n");
	} //end of while*/
	
	return 0;
} 

//=============================================================================  
bool MyStack::IsEmpty()
{
	if(top==NULL)
		return true;
	else
		return false;
}
//=============================================================================  
bool MyStack::IsFull()
{
	listNode *temp =(listNode*)malloc(sizeof(listNode));
	if(temp==NULL)
		return true;
	else
		return false;
}
//============================================================================= 
void MyStack::Push(int data)
{
	listNode *temp = (listNode*)malloc(sizeof(listNode));
	temp->data=data;
	temp->link = top;
	top = temp;
}
//=============================================================================  
int MyStack::Pop()
{
	int data;
	listNode *temp = (listNode*)malloc(sizeof(listNode));
	if(IsEmpty())
		printf("The STACK is empty\n");
	else{
		temp=top;
		data=top->data;
		top=top->link;
		free(temp);
		return data;
	}
 } 
//=============================================================================  
void MyStack::Show()
{
	listNode *temp=top;
	while(temp!=NULL)
	{
		printf("%d->", temp->data);
		temp=temp->link;
	}
	printf("NULL\n");
}

