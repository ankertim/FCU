#include <stdio.h> 
#include <stdlib.h>

#define MAX 80
struct node
{
	int data;
	int level;
	node *llink, *rlink;
	node()
	{
		llink = NULL;
		rlink = NULL;
	}
};

struct BS_tree
{
	node *head;
	int height;
	BS_tree(const char *filename);
	void Insert(int num);		// 包含建立以及插入節點。
	void Delete(int num);		// 從Binary Search Tree中刪除一個節點。
	void ShowTree();			// 以樹狀圖形將此Binary Search Tree印出。
	node* Search(int num);		// 當呼叫此函數時，傳入一個欲搜尋的數值進行搜尋，
								// 若找到則傳回此節點的父親節點，
								// 若沒有找到則回傳NULL。
	void LevelTraversal();
	void ShowSpace(int);
	int pow(int, int);
}; 

struct Queue
{
	node* seq[MAX];
	int front, rear;
	Queue()
	{
		front=0;
		rear=0;
	}
	bool IsFull()
	{
		if((rear+1)%MAX == front)
		{			
			return true;
		}
		else
			return false;
	}
	bool IsEmpty()
	{
		if(rear == front)
			return true;
		else
			return false;
	}

	void Add(node* tmp)
	{
		if(IsFull() == false)		
		{
			seq[rear] = tmp;
			rear = (rear+1)%MAX;
		}
		else
		{
			printf("The Queue is Full\n");
		}		
	}
	
	node* Del()
	{
		node *tmp = NULL;
		if(IsEmpty() == false)
		{
			tmp = seq[front];
			front = (front+1)%MAX;
		}
		else
		{
			printf("The Queue is Empty\n");
		}
		return tmp;
	} 
};

int main()
{
	BS_tree myTree("1225.txt");
	myTree.LevelTraversal();
	myTree.ShowTree();
	return 0;
} 

//======================================
BS_tree::BS_tree(const char *filename)
{
	FILE *fptr;
	int num;
	head = NULL;
	height = 0;
	fptr = fopen(filename, "r");
	printf("Read file: ");
	while (!feof(fptr)) {
		fscanf(fptr, "%d", &num);
		printf("%2d ", num);
		this->Insert(num);		
	}
	printf("\n");
	
}
//======================================
void BS_tree::Insert(int num)
{
	if(head == NULL)
	{
		head = (node*)malloc(sizeof(node));
		// head = new node;
		head->data = num;
		head->level = 1;
		head->llink = NULL;
		head->rlink = NULL;
	}
	else
	{
		node *tmp, *child;
		tmp = this->Search(num);
				
		//child=new node;
		child = (node*)malloc(sizeof(node));
		child->rlink = NULL;
		child->llink = NULL;
		child->data = num;
		child->level = tmp->level+1;
		// adjust BS tree height
		if(this->height < child->level)
			this->height = child->level;
		// determine child is parent's right or left link
		if(num > tmp->data)
			tmp->rlink = child;
		else
			tmp->llink = child;
	}
}
//======================================
node* BS_tree::Search(int num)
{
	node *tmp=head, *pre=NULL;
	while(tmp != NULL) 
	{
		pre = tmp;
		if(num > tmp->data)			
			tmp = tmp->rlink;
		else
			tmp = tmp->llink;	
	}
	return pre;
}
//======================================
void BS_tree::LevelTraversal()
{
	Queue Q;
	node *tmp = head;
	Q.Add(tmp);
	while (Q.IsEmpty() != true) {
		tmp = Q.Del();
		printf("Delete %2d\n", tmp->data);
		
		if(tmp->llink != NULL) {
			Q.Add(tmp->llink);
			printf("\nadd left node %2d to Q\n", tmp->llink->data);
		}
		if(tmp->rlink != NULL) {
			Q.Add(tmp->rlink);
			printf("add right node %2d to Q\n\n", tmp->rlink->data);
		}
	}
}
//======================================
void BS_tree::ShowSpace(int level)
{
	for(int i=0; i<pow(2, level); i++)
	{
		printf(" ");
	}
}
//======================================
int BS_tree::pow(int base, int exp)
{
	int result = 1;
	for(int i=0; i<exp; i++)
	{
		result = result * base;
	}
	return result;
}
//======================================
void BS_tree::ShowTree()
{
	int level = 1, count = 0;
	Queue Q;
	//add BS tree head in Queue
	node *tmp = head;
	Q.Add(tmp);
	// null node
	node *null_node[height+1];
	// print tree
	printf("==========================================================\n");
	printf("height: %d\n", height);
	printf("Binary Search Tree:\n");
	while (Q.IsEmpty() != true) {
		tmp = Q.Del();
		ShowSpace(height - level + 1);
		if (tmp->data != -1)
			printf("\b\b%2d", tmp->data);
		ShowSpace(height - level + 1);
		count++;
		// if tree need \n, just print
		if(count == pow(2, level) - 1) {
			printf("\n");
			level++;
		}
		// add tmp's child, if child is null, add null_node
		const int tmp_level = tmp->level;
		null_node[tmp_level + 1] = (node*)malloc(sizeof(node));
		// left child
		if(tmp->llink != NULL)
			Q.Add(tmp->llink);
		else {
			if(tmp_level != height) {
				null_node[tmp_level + 1]->level = tmp_level + 1;
				null_node[tmp_level + 1]->data = -1;
				null_node[tmp_level + 1]->llink = NULL;
				null_node[tmp_level + 1]->rlink = NULL;
				Q.Add(null_node[tmp_level + 1]);
			}
		}
		// right child
		if(tmp->rlink != NULL)
			Q.Add(tmp->rlink);
		else {
			if(tmp_level != height) {
				null_node[tmp_level + 1]->level = tmp_level + 1;
				null_node[tmp_level + 1]->data = -1;
				null_node[tmp_level + 1]->llink = NULL;
				null_node[tmp_level + 1]->rlink = NULL;
				Q.Add(null_node[tmp_level + 1]);
			}
		}
	}
	printf("\n");
}
