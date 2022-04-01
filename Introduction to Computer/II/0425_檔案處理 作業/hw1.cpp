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
		cout<<"aaa.txt內容 :\n";
		while(ia.get(ch))/*問題 while(!ia.eof()){ia.get(ch);cout<<ch;;}會多讀最後一個字元*/
		{
			cout<<ch;
			oc<<ch;
		}
		cout<<"\nbbb.txt內容 :\n";
		while(ib.get(ch))
		{
			cout<<ch;
			oc<<ch;
		}
		cout<<endl;
		cout<<"ccc.txt寫入完成\n";
	}
	else
	  cout<<"檔案開啟失敗\n";

	ia.close(),ib.close(),oc.close();
	system("pause");
	return 0;
} 
