#include<stdio.h>
#include<stdlib.h>

struct listNode {
	int data; //�C�@�Ӱ��|���`�I���֦��@�Ӿ�Ƹ��
	listNode *link; //�C�@�Ӱ��|���`�I���֦��@�ӫ��Ы��V�U�@�Ӹ`�I�A���p�S���K���� NULL
};
struct MyStack {
	listNode *top;
	void Push(int data); //�Q�� malloc()��O����n�Ŷ��å[�J���|��
	int Pop(); //�q���|���o��@����ơA�çQ�� free()��ƱN�Ŷ��ٵ��O����C
	bool IsEmpty(); //���|�O�_���šA���|���Ŧ^�� true�A���|�����Ŧ^�� false
				    //�� top ���Ы��V NULL ���ɭԬ���
				    
	bool IsFull();  //���|�O�_�����A���|�����^�� true�A���|�������^�� false
				    //��P�O����n�Ŷ�( malloc() )�o�o����Ŷ����ɭԬ���
				    //��I�s malloc()�^�Ǭ� NULL �ɡA�h���n�Ŷ�����
	void Show();
	MyStack() //���g�غc�l�A�N���� MyStack ����ɡAStack ���Ū��C
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

