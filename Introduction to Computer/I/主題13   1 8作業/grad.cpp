#include <iostream>
#include <cstdlib>
using namespace std;
int main(int argc, char *argv[])  //命令列參數傳遞
{
    if(argc<4)  
        cout << "輸入參數不足 "<<4-argc<<"個" << "\n";
    else
    {
    	cout<<"黃彥傑M0602782"<<endl;
        cout << "argc=" << argc << "\n";  //顯示傳送資料個數 
        for(int i=0;i<argc;i++)  //顯示傳送資料內容
            cout << "argv[" << i << "]=" << argv[i] << "\n"; 
    }
    
    cout<< "上底 = "<< atoi(argv[1]) << endl << "下底 = "<< atoi(argv[2]) << endl << "高 = "<< atoi(argv[3]) << endl 
	     << "面積 = "<< (atoi(argv[1])+atoi(argv[2]))*atoi(argv[3])/2<<endl;
    
    system("pause");
    return 0;
}
