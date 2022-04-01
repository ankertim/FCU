#include <stdio.h>
#include <stdlib.h>
#define MAX 100

struct polynomial{
	int coef;
	int expon;
};

struct MyPoly{
	polynomial terms[MAX] ;	
	int size ;					
	MyPoly();					
	MyPoly(const char*);				
	
	void ShowPoly( ) ;			
	MyPoly Add(MyPoly) ;			
	void SingleMult(int) ;		
	int Lead_Exp() ;			
	void Attach(int, int) ;		
	void Remove(int);			
	MyPoly Mult(MyPoly); 		
};


int main(){
	int m, four_num, five_Lead_Exp, six_coef, six_expon, seven_expon;
	char file_name_A[16], file_name_B[16], file_name_C[16];
	MyPoly C("c.txt");
	printf("����: ");
	C.ShowPoly();
	printf("���Ҧ�: \n1�BŪ�J�h����\n2�B�L�X�h�������e\n3�B�h�����ۥ[\n4�B�h�������W�@�ƭ�\n5�B�L�X�h�������̤j���ƪ��Y��\n6�B�s�W����\n7�B�R���h������������\n8�B�h�����ۭ�\n");
	printf("option: \n");
	scanf("%d", &m);
	switch(m) {
		case 1:{
			printf("�п�J����:");
			scanf("%s", file_name_C);
			MyPoly A(file_name_C);
			printf("�h����: ");
			A.ShowPoly(); 
			break;
	    }
		case 2:{
			C.ShowPoly();
			break;
		}
		case 3:{
			printf("�п�J�n�ۥ[��A����:");
			scanf("%s", file_name_A);
			MyPoly A(file_name_A);
			printf("�п�J�n�ۥ[��B����:");
			scanf("%s", file_name_B);
			MyPoly B(file_name_B);
			
			MyPoly D;
			D=A.Add(B);
			printf("�ۥ[��: ");
			D.ShowPoly();
			break;
		}
		case 4:{
			printf("�п�J�h���O�n�ۭ����Ʀr: ");
			four_num = 0;
			scanf("%d", four_num);
			C.SingleMult(four_num);
			break;
		}
		case 5:{
			five_Lead_Exp = -1;
			five_Lead_Exp = C.Lead_Exp();
			printf("�̤j���ƪ��Y��: %d",five_Lead_Exp);
			break;
		}
		case 6:{
			printf("�п�J�n�s�W������coef,expon: ");
			scanf("%d%d", six_coef, six_expon);
			C.Attach(six_coef, six_expon);
			break;
		}
		case 7:{
			printf("�п�J�n�R��������expon: ");
			scanf("%d", seven_expon);
			break;
		}
		case 8:{
			printf("�п�J�n�ۭ���A����:");
			scanf("%s", file_name_A);
			MyPoly A(file_name_A);
			printf("�п�J�n�ۭ���B����:");
			scanf("%s", file_name_B);
			MyPoly B(file_name_B);
			printf("A: ");
			A.ShowPoly();
			printf("B: ");
			B.ShowPoly();
			
			MyPoly E;
			E=A.Mult(B);
			printf("A*B: ");
			E.ShowPoly();
			break;
		}
	}
		
	//MyPoly A("a.txt");
	//A.ShowPoly();
	/*MyPoly B("b.txt");	
	B.ShowPoly();*/
	//A.Attach(10,10);
	//A.ShowPoly();
	//A.Remove(10);
	//A.ShowPoly();
	//MyPoly C;
	//C=A.Add(B);
	//C.ShowPoly();
	
    /*MyPoly D;
	D=A.Mult(B);
	D.ShowPoly();*/
	return 0;
} 

MyPoly::MyPoly()
{
	size=0;
}

MyPoly::MyPoly(const char* filename)
{
	FILE *fptr=fopen(filename,"r");
	size=0;	
	while(!feof(fptr))
	{		
		fscanf(fptr,"%d %d", &terms[size].coef,&terms[size].expon);		
		size++;
	}
	fclose(fptr);
}

void MyPoly::ShowPoly()
{
	int i;
	for(i=0;i<size-1;i++)
	{
		printf("%dX^%d+",terms[i].coef, terms[i].expon);
	}
	printf("%dX^%d\n",terms[i].coef, terms[i].expon);
}

void MyPoly::SingleMult(int num)
{
	int i;
	for(i=0;i<size;i++)
	{
		terms[i].coef *= num;
	}
}
MyPoly MyPoly::Add(MyPoly B)
{
	MyPoly Temp;
	int sum;
	int indexA=0, indexB=0;	
	while(indexA<size && indexB<B.size)
	{
		
		if(terms[indexA].expon>B.terms[indexB].expon)
		{
		
			Temp.Attach(terms[indexA].coef, terms[indexA].expon);
			indexA++;
		}
		else if(terms[indexA].expon<B.terms[indexB].expon)
		{
		
			Temp.Attach(B.terms[indexB].coef, B.terms[indexB].expon);
			indexB++;
		}
		else
		{
			sum=terms[indexA].coef+B.terms[indexB].coef;
			if(sum!=0)
			{
				Temp.Attach(sum, terms[indexA].expon);
			}
			indexA++;
			indexB++;
		}		
		//Temp.ShowPoly();
	}
	for(;indexA<size;indexA++)
		Temp.Attach(terms[indexA].coef, terms[indexA].expon);
	for(;indexB<B.size;indexB++)
		Temp.Attach(B.terms[indexB].coef, B.terms[indexB].expon);
		
	return Temp;
}
MyPoly MyPoly::Mult(MyPoly B)
{
	MyPoly Temp;
	int i, j;
	int Temp_coef, Temp_expon;
	for(i=0; i<this->size; i++){
		for(j=0; j<B.size; j++){
			
			Temp_coef = 0;
			Temp_expon = 0;
			Temp_coef = this->terms[i].coef * B.terms[j].coef;
			Temp_expon = this->terms[i].expon + B.terms[j].expon;
			Temp.Attach(Temp_coef, Temp_expon);
		}
	}
	return Temp;
}
int MyPoly::Lead_Exp()
{
	if(size==0)
		return 0;
	else
		return terms[0].expon;
}

void MyPoly::Attach(int coef, int expon)	
{
	polynomial temp;
	int pos=0,i;
	temp.coef=coef;
	temp.expon=expon;
	if(size==0)
	{
		size++;
		terms[0]=temp;				
	}
	else
	{
		while(terms[pos].expon>temp.expon&&pos<size)
		{		
			pos++;	
		}				
		for(i=size;i>pos;i--)
		{
			terms[i]=terms[i-1];
		}
		terms[i]=temp;		
		size++;
	}			
}
void MyPoly::Remove(int num)
{
	int pos=0,i;
	while(terms[pos].expon>num)
	{		
		pos++;	
	}	
	for(i=pos;i<size-1;i++)
	{
		terms[i]=terms[i+1];
	}
	size--;
}
