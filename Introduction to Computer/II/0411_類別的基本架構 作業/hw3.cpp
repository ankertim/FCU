#include<iostream>
#include <cstdlib>//�[�F #include <cstdlib>
using namespace std;
class CWin {
    public://�Y�Oprivate�U��L�k�]�� 
        int width;
        int height;
    public:
        void show_area(void) {
            cout << "Area = "
                 << width*height << endl;
        }
};
 
int main(void) {
    CWin win1;
    win1.width = 5;
    win1.height = 12;
    win1.show_area();
    return 0;
}
