#include <iostream>
#include <cstdlib>
using namespace std;
#define PI 3.1415926
#define VOLUMN(R) ((4/3.0)*PI*(R)*(R)*(R))
int main()
{
	cout<<"�b�|=1�A�y��n="<<VOLUMN(1)<<"\n";
	cout<<"�b�|=2�A�y��n="<<VOLUMN(2)<<"\n";
	cout<<"�b�|=3�A�y��n="<<VOLUMN(3)<<"\n";
	cout<<"�b�|=4�A�y��n="<<VOLUMN(4)<<"\n";
	cout<<"�b�|=5�A�y��n="<<VOLUMN(5)<<"\n";
	system("pause");
	return 0;
}
