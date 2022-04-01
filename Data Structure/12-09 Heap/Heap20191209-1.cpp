#include<stdio.h>
#include<stdlib.h>

#define MAX	80

struct HeapTree
{
	int data[MAX] = {-1};
	int count;
	HeapTree(const char* filename);
	void InsertData();
	void ShowSpace(int);
	int MyPower(int);
	int GetLevel();
	void ShowTree();
	void Adjust();
	void HeapSort();
};

int main()
{
	HeapTree myTree("1.txt");
	printf("Final Tree:\n");
	myTree.ShowTree();
	return 0;
}

//======================================
HeapTree::HeapTree(const char* filename)
{
	FILE *fptr=fopen(filename, "r");
	count=1;
	// because feof function will be read more than once
	fscanf(fptr, "%d", &data[count]);
	
	do {
		//fscanf(fptr, "%d", &data[count]);
		printf("Insert: %d\n\n", data[count]);
		printf("Before:\n");
		ShowTree();
		printf("-----------------------------------\n");
		InsertData();
		printf("After:\n");
		ShowTree();
		printf("===================================\n");
		count++;
		//system("pause");
	} while(fscanf(fptr, "%d", &data[count]) != EOF);
	count--;
}

//======================================
void HeapTree::InsertData()
{
	int index=count;
	int temp;
	
	while(index/2>0)
	{
		if(data[index]>data[index/2])
		{
			temp=data[index];
			data[index]=data[index/2];
			data[index/2]=temp;
			index=index/2;
		}
		else
			break;
	}

}
//======================================
void HeapTree::ShowSpace(int num)
{
	for(int i=0; i<MyPower(num); i++)
	{
		printf(" ");
	}
}

//======================================
int HeapTree::MyPower(int num)
{
	int result=1;
	for(int i=0; i<num; i++)
	{
		result = result * 2;
	}
	return result;
}

//======================================
int HeapTree::GetLevel()
{
	int tmp=count;
	int height=0;
	while(tmp>0)
	{
		height++;
		tmp=tmp/2;
	}
	return height;
}

//======================================
void HeapTree::ShowTree()
{
	int i=1;
	int level=1;
	int height=GetLevel();
	for(i=1; i<=count; i++)
	{		
		ShowSpace(height-level+1);
		printf("\b\b%2d", data[i]);
		ShowSpace(height-level+1);
		if(i==MyPower(level)-1)
		{
			level++;
			printf("\n");
		}
				
	}
	printf("\n");
}
//======================================

