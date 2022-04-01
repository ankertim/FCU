#include<iostream>
#include <cstdlib>//加了 #include <cstdlib>
using namespace std;
class CWin {
    public://若是private下方無法設值 
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
