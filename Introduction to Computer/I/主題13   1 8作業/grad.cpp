#include <iostream>
#include <cstdlib>
using namespace std;
int main(int argc, char *argv[])  //�R�O�C�Ѽƶǻ�
{
    if(argc<4)  
        cout << "��J�ѼƤ��� "<<4-argc<<"��" << "\n";
    else
    {
    	cout<<"���۳�M0602782"<<endl;
        cout << "argc=" << argc << "\n";  //��ܶǰe��ƭӼ� 
        for(int i=0;i<argc;i++)  //��ܶǰe��Ƥ��e
            cout << "argv[" << i << "]=" << argv[i] << "\n"; 
    }
    
    cout<< "�W�� = "<< atoi(argv[1]) << endl << "�U�� = "<< atoi(argv[2]) << endl << "�� = "<< atoi(argv[3]) << endl 
	     << "���n = "<< (atoi(argv[1])+atoi(argv[2]))*atoi(argv[3])/2<<endl;
    
    system("pause");
    return 0;
}
