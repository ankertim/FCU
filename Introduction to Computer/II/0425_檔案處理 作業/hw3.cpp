#include <iostream>
#include <cstdlib>
#include <fstream>
using namespace std;
int main()
{
	int num=0,n=0;
	fstream ic,fd,oe;
	ic.open("C.txt",ios::in);
	fd.open("D.bin",ios::binary|ios::out);
	oe.open("E.txt",ios::out);
	cout<<"C.txt檔案內容 :\n";
	for(int i=0;i<4;i++)
	{
		for(int j=0;j<4;j++)
		{
			ic>>num;
			cout<<num<<"\t";
			fd.write((char *)&num,sizeof(num));
		}
		cout<<endl;
	}
	cout<<"D.bin寫入完成...\n"<<"讀取D.bin\n";
	cout<<"D.bin內容 :\n";
	fd.close();
	fd.open("D.bin",ios::binary|ios::in);
	for(int i=0;i<4;i++)
	{
		for(int j=0;j<4;j++)
		{
			fd.read((char *)&n,sizeof(n));
			oe<<n*10<<" ";
			cout<<n<<"\t";
		}
		oe<<endl;
		cout<<endl;
	}
	cout<<"E.txt寫入完成...\n";
	ic.close();
	fd.close();
	oe.close();
	
	system("pause");
	return 0;
}
