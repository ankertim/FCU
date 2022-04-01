#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<time.h>
#define MAX 40
#define Len 20

struct LongInt
{
	int MyInt[MAX];
	bool IsPositive;
	
	LongInt();
	void Init();   					// 利用亂數產生一個長度小於 19 的值 
	void Init(int num);  			// 指定一個長度小於 19 的值 
	void Init(const char*);
	void operator = (int); 			// 運算子多載 
	void Zero();  					// 將本身的陣列初始為 0 
	void Show();                    // 顯示陣列  
	void AllShow();					
	int Compare(LongInt b); 		//教本身長整數 b 之間何者較大，若大於 b 則回傳 1，反之，則回傳 -1 
	
	bool operator>(LongInt b);
	bool operator<(LongInt b);
	bool operator==(LongInt b);
	
	LongInt Add(LongInt);
	LongInt operator + (LongInt); 	
	LongInt Sub(LongInt);
	LongInt operator - (LongInt); 
	LongInt Multi(LongInt);
};

int main(){	
	srand(time(NULL));	
	LongInt a, b, c, d, e, f, g;
	a.Init("18468284177722972105");
	b.Init("57485431294651594451");
	
	printf("a =   ");
	a.Show();
	printf("b =   ");
	b.Show();
	
	c=a.Add(b);
	printf("a+b = ");
	c.Show();
	
	d=a.Sub(b);
	printf("a-b = ");
	d.Show();
	
	e=a.Multi(b);
	printf("a*b = ");
	e.AllShow();

	return 0;
}
//=========================================
LongInt::LongInt()
{
	int i;
	IsPositive=true;
	for(i=0;i<MAX;i++)
	{
		MyInt[i]=0;
	}
}

//=========================================
void LongInt::Init()
{
	int i;
	for(i=0;i<Len-1;i++)
	{
		MyInt[i]=rand()%10;
	}		
}
//=========================================
void LongInt::Init(int num)
{
	int i=0;
	while(num!=0)
	{
		MyInt[i]=num%10;
		num=num/10;
		i++; 
	}
}
//=========================================
void LongInt::Init(const char* str)
{
	int i=0,j=0;
	while(str[i]!='\0')
		i++;
	i-=1;
	for(; i>=0; i--)
	{
		MyInt[j]=str[i]-'0';
		j++;
	}
}
//=========================================
void LongInt::operator = (int num)
{
	
	int i=0;
	while(num!=0)
	{
		MyInt[i]=num%10;
		num=num/10;
		i++; 
	}	
}
//=========================================
void LongInt::Show()
{
	int i;
	if(IsPositive==false)
		printf("-");
	else
		printf(" ");
		
	for(i=Len-1;i>=0;i--)
	{
		printf("%d",MyInt[i]);
	}
	printf("\n");
}
//=========================================
void LongInt::AllShow()
{
	int i;
	if(IsPositive==false)
		printf("-");
	else
		printf(" ");
		
	for(int i=MAX-1; i>=0; i--)
	{
		printf("%d", MyInt[i]);
	}
	printf("\n");
}
//=========================================
int LongInt::Compare(LongInt b)
{
	int i;
	for(i=MAX-1;i>=0;i--)
	{
		if(MyInt[i]<b.MyInt[i])
			return -1;
		else if(MyInt[i]>b.MyInt[i])
			return 1;
	}
	return 0;	
}

//=========================================
bool LongInt::operator>(LongInt b)
{
	int i;
	for(i=MAX-1;i>=0;i--)
	{
		if(MyInt[i]<b.MyInt[i])
			return false;
		else if(MyInt[i]>b.MyInt[i])
			return true;
	}
	return false;	
}
//=========================================
bool LongInt::operator<(LongInt b)
{
	int i;
	for(i=MAX-1;i>=0;i--)
	{
		if(MyInt[i]<b.MyInt[i])
			return true;
		else if(MyInt[i]>b.MyInt[i])
			return false;
	}
	return false;	
}

//=========================================
bool LongInt::operator==(LongInt b)
{
	int i;
	for(i=MAX-1;i>=0;i--)
	{
		if(MyInt[i]<b.MyInt[i])
			return false;
		else if(MyInt[i]>b.MyInt[i])
			return false;
	}
	return true;	
}
//=========================================
LongInt LongInt::Add(LongInt b)
{
	LongInt sum;
	int i;
	for(i=0;i<MAX;i++) 
	{
		sum.MyInt[i]=MyInt[i]+b.MyInt[i];		
	}
	for(i=0;i<MAX;i++) 
	{
		if(sum.MyInt[i]>=10)
		{	
			sum.MyInt[i+1]+=sum.MyInt[i]/10;
			sum.MyInt[i]=sum.MyInt[i]%10;
		}
	}
	return sum;
}
//=========================================
LongInt LongInt::operator + (LongInt b)
{
	LongInt sum;
	int i;
	for(i=0;i<MAX;i++) 
	{
		sum.MyInt[i]=MyInt[i]+b.MyInt[i];		
	}
	for(i=0;i<MAX;i++) 
	{
		if(sum.MyInt[i]>=10)
		{
			sum.MyInt[i]=sum.MyInt[i]-10;
			sum.MyInt[i+1]++;
		}
	}
	return sum;	
}
//=========================================
LongInt LongInt::Sub(LongInt b)
{
	LongInt result;
	if(Compare(b)==1 || Compare(b)==0)
	{
		result.IsPositive=true;
		for(int i=0;i<MAX;i++)
			result.MyInt[i]=MyInt[i]-b.MyInt[i];
	}
	else
	{
		result.IsPositive=false;
		for(int i=0;i<MAX;i++)
			result.MyInt[i]=b.MyInt[i]-MyInt[i];
	}
	for(int i=0;i<MAX;i++)
	{
		if(result.MyInt[i]<0)
		{
			result.MyInt[i]+=10;
			result.MyInt[i+1]--;
		}		
	}
	return result;	
}
//=========================================

LongInt LongInt::operator-(LongInt b)
{
	LongInt result;
	if(Compare(b)==1 || Compare(b)==0)
	{
		result.IsPositive=true;
		for(int i=0;i<MAX;i++)
			result.MyInt[i]=MyInt[i]-b.MyInt[i];
	}
	else
	{
		result.IsPositive=false;
		for(int i=0;i<MAX;i++)
			result.MyInt[i]=b.MyInt[i]-MyInt[i];
	}
	for(int i=0;i<MAX;i++)
	{
		if(result.MyInt[i]<0)
		{
			result.MyInt[i]+=10;
			result.MyInt[i+1]--;
		}		
	}
	return result;	
}
//=========================================
LongInt LongInt::Multi(LongInt b)
{
	LongInt result;
	if(this->IsPositive==false || b.IsPositive==false)
		result.IsPositive == false;
	else
		result.IsPositive == true;
	for(int j=0; j<MAX; j++)  //j=乘數index 
	{
		for(int i=0; i<MAX; i++)
		{
			result.MyInt[j+i] += this->MyInt[i]*b.MyInt[j]; 
		}
	}
	/*printf("---37: %d\n",result.MyInt[37]);
	printf("---38: %d\n",result.MyInt[38]);
	printf("---39: %d\n",result.MyInt[39]);*/
	for(int i=0; i<40; i++)
	{
		/*if(i==38||i==39||i==37){
			printf("%d::%d\n",i,result.MyInt[i]);
		}*/
		if(result.MyInt[i]/10>0){
			result.MyInt[i+1] += result.MyInt[i]/10;
			result.MyInt[i] = result.MyInt[i]%10;
		}
	}
	
    return result;
}
