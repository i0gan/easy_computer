#include <iostream>
using namespace std;
int solve(int n) {
    if(n % 2 == 0) return 0;
    if(n < 9) return -1;
    int i = 0, l = 0;
    while(n > 0) {
        l++;
        n -= n % 10;
        n /= 10;
        if(n % 2 != 0)
            i ++;
        else break;
    }
    //cout << "i: " << i << endl;
    //cout << "l: " << l << endl;
    if((l - 1) == i && n == 0) {
        return -1;
    }
    return i + 1;
}
int main(void) {
    int n = 0;
    cin >> n;
    cout << solve(n);
}
