#include<stdio.h>
#include<stdlib.h>

struct listNode {
	int data;
	listNode *link;
};

struct linkedList { 
	listNode *head;
	listNode *tail;
	linkedList()
	{
		head=tail=NULL;
	}
	
	void Add(int);              // �s�W�A�b�쵲��C���᭱�s�W�@�����number�A�ǤJ�Ȭ����s�W����ơC 
	void Del(int);              // �N�@���S�w��m����ƧR���A�ǤJ�Ȭ����R������m�C
	void Insert(int, int);      // �N�@����ƴ��J��S�w����m �A�ǤJ�Ȭ����J���Ʀr�H�α����J����m�C 
	void Modify(int, int);      // �ק��ơA�ǤJ�Ȭ��ק諸�Ʀr�H�α��ק諸��m�C  
	void Inverse();             // �N�ثe���쵲��C����C 
	int Length();               // �p�⦹�쵲��C�����סA�^�ǭȬ���C���סC   
	void Combine(listNode*);    // �N�ثe���쵲��C (head) �P�쵲��C (head2) �X�֡A�åB�N���G�s��ثe��C�C 
	void Show();                // ��ܦ�C���e�G 1->2->3->Null 
};

int main(){
	linkedList A;
	linkedList B;
	B.Add(10);
	B.Add(20);
	B.Add(30);
	B.Add(40);
	B.Add(50);
	int option=0;
	while(1){
		printf("1.Add\n2.Delete\n3.Insert\n4.Modify\n5.Inverse\n6.Length\n7.Combine\n8.Show\noption: ");
		scanf("%d",&option);
		printf("\n");
		if(option==-1)
			break;
		switch(option){
			case 1:{
				int add;
				printf("input data: ");
				scanf("%d",&add);
				A.Add(add);
				break;
			}
			case 2:{
				int Delete_index;
				printf("input index: ");
				scanf("%d",&Delete_index);
				A.Del(Delete_index);
				break;
			}

			case 3:{
				int c3_da, c3_index;
				printf("input data and index: ");
				scanf("%d%d",&c3_da, &c3_index);
				A.Insert(c3_da, c3_index);
				break;
			}
			case 4:{
				int c4_newda, c4_index;
				printf("input newData and index: ");
				scanf("%d%d",&c4_newda, &c4_index);
				A.Modify(c4_newda, c4_index);
				break;
			}
			case 5:{
				A.Inverse();
				break;
			}
			case 6:{
				printf("Length: %d\n",A.Length());
				break;
			}
			case 7:{
				A.Combine(B.head);
				break;
			}
			case 8:{
				A.Show();
				break;
			}
		} //end of switch
		printf("\n");
	} //end of while
	
	return 0;
} 

//============================================================================= 
void linkedList::Add(int number)
{
	listNode *temp=(listNode*)malloc(sizeof(listNode));
	temp->data=number;
	temp->link=NULL;
	if(head==NULL)
	{
		head=temp;
		tail=temp;
	}
	else
	{
		tail->link=temp;
		tail=temp;
	}
} 

//============================================================================= 
void linkedList::Del(int deletePosition)
{
	listNode *PreofDel=head;
	listNode *Current=head;
	//printf("List Length: %d\n", Length());
	
	if(deletePosition>Length()-1)
	{
		printf("Delete Position Error!!\n");
	}
	else
	{
		if(deletePosition==0)
		{
			head=head->link;
			free(Current);
		}
		else
		{
			for(int i=0;i<deletePosition&&i<Length();i++)					
			{
				PreofDel=Current;
				Current=Current->link;				
			}			
			PreofDel->link=Current->link;
			if(Current==tail)
				tail=PreofDel;
			free(Current); 
		}
	}		
} 
//============================================================================= 
void linkedList::Insert(int insertNumber, int insertPosition)
{
	
	listNode *Current=head;  //current =pre of insertPosition 
	listNode *temp=(listNode*)malloc(sizeof(listNode));	
	temp->data=insertNumber;
	temp->link=NULL;
	if(insertPosition==0)
	{
		temp->link=head;
		head=temp;		
	}
	else //2  // 1  //3-1
	{
		for(int i=0;i<insertPosition-1 && i<Length()-1;i++)					
		{
		//	printf("%d\n",Length());
			Current=Current->link;				
		}			
		if(Current==tail)
		{
			Current->link=temp;
			tail=temp;			
		}
		else
		{
			temp->link=Current->link;
			Current->link=temp;					
		}		
	}
}
//============================================================================= 
void linkedList::Modify(int modifyNumber, int modifyPosition) 
{
	listNode *Current=head;
	if(modifyPosition>Length()-1)
	{
		printf("Position Error!!\n");		
	}
	else
	{
		for(int i=0;i<modifyPosition ;i++)					
		{
			Current=Current->link;				
		}					
		Current->data=modifyNumber;
	}
}
//=============================================================================  
void linkedList::Inverse()
{
	listNode *Pre=NULL, *Current=NULL, *Next=NULL;
	if(head->link!=NULL) 
	{		
		Next=head->link;
		Current=head;
		tail=head;
		while(Next!=NULL)
		{
			Current->link=Pre;
			Pre=Current;
			Current=Next;
			Next=Next->link;
		}
		Current->link=Pre;
		head=Current;
	}
} 
//=============================================================================
int linkedList::Length()
{
	int count=0;
	listNode *temp=head;
	while(temp!=NULL)
	{
		count++;
		temp=temp->link;
	}
	return count;

} 
//============================================================================= 
void linkedList::Combine(listNode *head2)
{
	listNode* temp=head2;
	tail->link=head2;
	
	if(temp!=NULL)
	{
		while(temp->link!=NULL)
		{
			temp=temp->link;
		}
		tail=temp;				
	} 
	
} 
//=============================================================================  
void linkedList::Show()
{
	listNode *temp=head;
	while(temp!=NULL)
	{
		printf("%d->", temp->data);
		temp=temp->link;
	}
	printf("NULL\n");
}

