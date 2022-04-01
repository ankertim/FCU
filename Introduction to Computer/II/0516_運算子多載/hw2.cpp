#include <iostream>
#include <cstdlib>
#include <cmath>
using namespace std;
class matrix
{
	public:
		int mat[3][3]={{0,0,0},{0,0,0},{0,0,0}};
		char id;
		matrix(){};
		matrix(char i,int m[3][3])
		{
			id=i;
			for(int i=0;i<3;i++)
			{
				for(int j=0;j<3;j++)
				{
					mat[i][j]=m[i][j];
				}
			}
		}
		void show()
		{
			cout<<"Matrix "<<id<<endl;
			for(int i=0;i<3;i++)
			{
				for(int j=0;j<3;j++)
				{
					cout<<mat[i][j]<<" ";
				}
				cout<<endl;
			}
		}
		matrix &operator+(const matrix &c)
		{
			for(int i=0;i<3;i++)
			{
				for(int j=0;j<3;j++)
				{
					mat[i][j]=mat[i][j]+c.mat[i][j];
				}
			}
			return *this;
		}
		matrix &operator*(const int num)
		{
			for(int i=0;i<3;i++)
			{
				for(int j=0;j<3;j++)
				{
					mat[i][j]*=num;				
				}
			}
			return *this;
		}
		matrix &operator=(const matrix &c)
		{
			for(int i=0;i<3;i++)
			{
				for(int j=0;j<3;j++)
				{
					mat[i][j]=c.mat[i][j];
				}
			}
			return *this;
		}
};
int main()
{
	int a[3][3]={{1,2,3},{4,5,6},{7,8,9}};
	int b[3][3]={{2,2,2},{6,5,4},{3,8,9}};
	matrix A('A',a);
	matrix B('B',b);
	matrix C;
	A.show();
	B.show();
	cout<<"Matrix C = (Matrix A + Matrix B) * 10\n";
	C=((A+B)*10);
	C.show();
	system("pause");
	return 0;
}
