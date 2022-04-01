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
	printf("項式: ");
	C.ShowPoly();
	printf("選單模式: \n1、讀入多項式\n2、印出多項式內容\n3、多項式相加\n4、多項式乘上一數值\n5、印出多項式中最大指數的係數\n6、新增項式\n7、刪除多項式中的項式\n8、多項式相乘\n");
	printf("option: \n");
	scanf("%d", &m);
	switch(m) {
		case 1:{
			printf("請輸入文檔:");
			scanf("%s", file_name_C);
			MyPoly A(file_name_C);
			printf("多項式: ");
			A.ShowPoly(); 
			break;
	    }
		case 2:{
			C.ShowPoly();
			break;
		}
		case 3:{
			printf("請輸入要相加的A文檔:");
			scanf("%s", file_name_A);
			MyPoly A(file_name_A);
			printf("請輸入要相加的B文檔:");
			scanf("%s", file_name_B);
			MyPoly B(file_name_B);
			
			MyPoly D;
			D=A.Add(B);
			printf("相加後: ");
			D.ShowPoly();
			break;
		}
		case 4:{
			printf("請輸入多項是要相乘的數字: ");
			four_num = 0;
			scanf("%d", four_num);
			C.SingleMult(four_num);
			break;
		}
		case 5:{
			five_Lead_Exp = -1;
			five_Lead_Exp = C.Lead_Exp();
			printf("最大指數的係數: %d",five_Lead_Exp);
			break;
		}
		case 6:{
			printf("請輸入要新增項式的coef,expon: ");
			scanf("%d%d", six_coef, six_expon);
			C.Attach(six_coef, six_expon);
			break;
		}
		case 7:{
			printf("請輸入要刪除項式的expon: ");
			scanf("%d", seven_expon);
			break;
		}
		case 8:{
			printf("請輸入要相乘的A文檔:");
			scanf("%s", file_name_A);
			MyPoly A(file_name_A);
			printf("請輸入要相乘的B文檔:");
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
