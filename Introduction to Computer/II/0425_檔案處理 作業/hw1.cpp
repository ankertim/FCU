#include <iostream>
#include <cstdlib>
#include <fstream>
using namespace std;
int main()
{
	fstream ia,ib,oc;
	char ch;
	ia.open("aaa.txt",ios::in);
	ib.open("bbb.txt",ios::in);
	oc.open("ccc.txt",ios::out);
	if(ia.is_open()&&ib.is_open()&&oc.is_open())
	{
		cout<<"aaa.txt���e :\n";
		while(ia.get(ch))/*���D while(!ia.eof()){ia.get(ch);cout<<ch;;}�|�hŪ�̫�@�Ӧr��*/
		{
			cout<<ch;
			oc<<ch;
		}
		cout<<"\nbbb.txt���e :\n";
		while(ib.get(ch))
		{
			cout<<ch;
			oc<<ch;
		}
		cout<<endl;
		cout<<"ccc.txt�g�J����\n";
	}
	else
	  cout<<"�ɮ׶}�ҥ���\n";

	ia.close(),ib.close(),oc.close();
	system("pause");
	return 0;
} 
