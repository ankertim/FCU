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
	cout<<"C.txt�ɮפ��e :\n";
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
	cout<<"D.bin�g�J����...\n"<<"Ū��D.bin\n";
	cout<<"D.bin���e :\n";
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
	cout<<"E.txt�g�J����...\n";
	ic.close();
	fd.close();
	oe.close();
	
	system("pause");
	return 0;
}
