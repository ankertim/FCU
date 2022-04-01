#include <stdio.h>
#include <stdlib.h>
#define MAX 8
struct MyBin{
	int val = 0;
	int a[MAX]={0};
	void DecToBin();
	void PrintOut();
	void NotBin();
	void FindFirstZero();
};

int main(void)
{
	FILE *fhw2;
	fhw2 = fopen("hw2.txt", "r");
	/*if(fhw2!=NULL)
		printf("open");
	else
	    printf("檔案開啟失敗");*/
	int i,j=0;
    //int dec_a=0, dec_b=0, dec_c=0, dec_d=0;
	char ch_a[MAX], ch_b[MAX];
	char ch_c[MAX], ch_d[MAX];
	MyBin dec_a, dec_b, dec_c, dec_d, dec_ab, dec_cd;
	
	fscanf(fhw2, "%s", ch_a);
	fscanf(fhw2, "%s", ch_b);
	fscanf(fhw2, "%s", ch_c);
	fscanf(fhw2, "%s", ch_d);
    // ch to int
	/*for(i=0; i<MAX; i++)
	{
		if(ch_a[i] != '\0')
			a[i] = ch_a[i]-'0';
		
		if(ch_b[i] != '\0')
			b[i] = ch_b[i]-'0';
		
		if(ch_c[i] != '\0')
			c[i] = ch_c[i]-'0';

		if(ch_d[i] != '\0')
			d[i] = ch_d[i]-'0';
	}*/
	//ch to dec
	i=0;
    while(ch_a[i] != '\0'){
    	// ASCII '0' = 48
    	dec_a.val = dec_a.val*2 + ch_a[i]-'0';
    	i++;
    }
    i=0;
    while(ch_b[i] != '\0'){
    	dec_b.val = dec_b.val*2 + ch_b[i]-'0';
    	i++;
    }
    i=0;
    while(ch_c[i] != '\0'){
    	dec_c.val = dec_c.val*2 + ch_c[i]-'0';
    	i++;
    }
    i=0;
    while(ch_d[i] != '\0'){
    	dec_d.val = dec_d.val*2 + ch_d[i]-'0';
    	i++;
    }
    //a-b 跟 c-d 
    dec_ab.val = dec_a.val-dec_b.val;
    dec_cd.val = dec_c.val-dec_d.val;
    
    dec_a.DecToBin();
    dec_b.DecToBin();
    dec_c.DecToBin();
    dec_d.DecToBin();
    //若負數轉 Bin 
    if(dec_ab.val<0)
    {
    	dec_ab.val = abs(dec_ab.val);
    	dec_ab.DecToBin();
    	dec_ab.NotBin();
        dec_ab.FindFirstZero();
	}
	else
		dec_ab.DecToBin();
    if(dec_cd.val<0)
    {
    	dec_cd.val = abs(dec_cd.val);
    	dec_cd.DecToBin();
    	dec_cd.NotBin();
        dec_cd.FindFirstZero();
	}
	else
		dec_cd.DecToBin();

    
    //輸出 a-b
	printf("輸出:\n");
	dec_a.PrintOut();
	printf("-");
	dec_b.PrintOut();
	printf("=");
	dec_ab.PrintOut();
	//輸出 c-d
	printf("\n輸出:\n");
	dec_c.PrintOut();
	printf("-");
	dec_d.PrintOut();
	printf("=");
	dec_cd.PrintOut();
	
	
	fclose(fhw2); 
	return 0;
}


void MyBin::DecToBin()
{
	int i=0;
	int temp=val;
	for(i=0;i<MAX;i++)
		a[i]=0;		
	i=0;
	while(temp!=0)
	{
		a[i]=temp%2;
		temp=temp/2;
		i++;		
	}		
}

void MyBin::PrintOut()
{
	int i;
	for(i=MAX-1;i>=0;i--)
	{
		printf("%d",a[i]);		
	}
	//printf("\n");
}

void MyBin::NotBin()
{
	int i=0;
	for(i=0; i<MAX; i++)
	{
		if(a[i] == 0)
		  a[i] = 1;
		else if(a[i] == 1)
		  a[i] = 0;
	}
}
void MyBin::FindFirstZero()
{
	int i=0;
	int index=-1;
	for(i=0; i<MAX; i++)
	{
		if(a[i] == 0){
			index=i;
			break;
		}
		  
	}
	for(i=0; i<index; i++)
	{
		a[i] = 0;
	}
	a[index] = 1;
}
