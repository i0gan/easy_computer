#include "base.h"
class Solution {
public:
    /**
     * 代码中的类名、方法名、参数名已经指定，请勿修改，直接返回方法规定的值即可
     *
     * 
     * @param str string字符串 
     * @return string字符串
     */
    string unpac(string str) {
        int n = 0;
        bool n_end = false;
        string outter_str, inner_str;
        for (auto i : str) {
            if(i == '|') {
                n_end = true;
                continue;
            }
            if(i >= '0' && i <= '9' && n_end == false)
                n = 10 * n + i - '0'; 
            else
                inner_str += i;
        }
        for(int k = 0; k < n; k++)
            outter_str += inner_str;
        return outter_str;
    }
    string compress(string str) {
        // write code here
        string ret = str;
        do {
            int i = str.find_last_of("[");
            int j = str.find_first_of("]");
            if(i == -1 || j == -1) {
                break;
            }
            string tmp_str = unpac(str.substr(i + 1, j - i - 1));
            str = str.substr(0, i) + tmp_str + str.substr(j + 1, str.size() - j - 1);
        } while(true);
        return str;
    }
};
