#include <iostream>
#include <cstdlib>
using namespace std;
int main()
{
	float a[3][5]={{33,32,56,45,33},{77,33,68,45,23},{43,55,43,67,65}};
	float sale[5]={12,16,10,14,15};
	float sum[]={0},asd[5]={0},max=0;//sum���H�Aasd�����~ 
	cout<<"�P���1���P��q�� 33 32 56 45 33"<<endl; 
	cout<<"�P���2���P��q�� 77 33 68 45 23"<<endl; 
	cout<<"�P���3���P��q�� 43 55 43 67 65"<<endl<<"\t"<<endl; 
	cout<<"(a)�C�ӾP����P���`���B�p�U:\n";
	for(int i=0;i<3;i++)
	{
		for(int j=0;j<5;j++)
		{
			sum[i]=sum[i]+a[i][j]*sale[j];
		}
	    
	}
	cout<<"�P���1���P���`���B "<<sum[0]<<endl;
	cout<<"�P���2���P���`���B "<<sum[1]<<endl;
	cout<<"�P���3���P���`���B "<<sum[2]<<endl<<"\t"<<endl;
	cout<<"(b)�C�����~�P���`���B�p�U:\n";
	for(int k=0;k<5;k++)
	{
		for(int h=0;h<3;h++)
		{
			asd[k]+=a[h][k]*sale[k];
		}
	}
	cout<<"���~A���P���`���B "<<asd[0]<<endl;
	cout<<"���~B���P���`���B "<<asd[1]<<endl;
	cout<<"���~C���P���`���B "<<asd[2]<<endl;
	cout<<"���~D���P���`���B "<<asd[3]<<endl;
	cout<<"���~E���P���`���B "<<asd[4]<<endl<<"\t"<<endl;
	for(int i=0;i<3;i++)
	{
		if(sum[i]>=max)
		{
			max=sum[i];
		}
	}
	if(max==sum[0])
		cout<<"(c)�~�Z�̦n���P����G�P���1";
	else if(max==sum[1])
	    cout<<"(c)�~�Z�̦n���P����G�P���2";
	else if(max==sum[2])
	    cout<<"(c)�~�Z�̦n���P����G�P���3"<<endl;
	system("pause");
	return 0;
 } 
