#include <iostream>
#include <string>
#include <vector>

#include "demo.h"


int bruteForce(const std::string & s, const std::string & t, int pos)
{
    if (pos < 0) { pos = 0; }

    // 比较时，i 为主串的索引，j 为子串的索引。start 为每次匹配时子串在主串比较的起始位置。
    int i, j, start;
    i = start = pos;
    j = 0;

    // 初始化主串与字串的长度
    int sLen = s.length();
    int tLen = t.length();

    // 开始循环比较
    while (start <= sLen - tLen && j < tLen)
    {
        if (s[i] == t[j]) { ++i; ++j; }
        else { i = ++start; j = 0;}
    }

    // j 到达子串长度说明比较成功
    return j >= tLen ? start : -1;
}


int nextInit(const std::string & T, std::vector<int> & next, int i, int j)
{
    if (i == 0) { return 0; }
    j = next[j - 1];
    return T[i] == T[j] ? j + 1
        : j == 0 ? 0
        : nextInit(T, next, i, j);
}

int kmp(const std::string & s, const std::string & t, int pos)
{
    if (pos < 0) { pos = 0; }

    // 比较时，i 为主串的索引，j 为子串的索引。start 为每次匹配时子串在主串比较的起始位置。
    int i, j, start;
    i = start = pos;
    j = 0;

    // 初始化主串与字串的长度
    int sLen = s.length();
    int tLen = t.length();

    // 初始化 next 数组
    std::vector<int> next(tLen, 0);
    for (int m = 0; m < tLen; m++) { next[m] = nextInit(t, next, m, m); }

    // 比较字串，注意与 Brute-Force 不一样的是，当匹配不一致时，start、i、j 的修改。
    while (i < sLen && j < tLen)
    {
        if (s[i] == t[j]) { ++i; ++j; }
        else
        {
            if (j == 0) { i = ++start; j = 0; }
            else
            {
                start += j - next[j - 1];
                j = next[j - 1];
            }
        }
    }

    // j 到达子串长度说明比较成功
    return j >= tLen ? start : -1;
}

void demo()
{
    using std::cout;
    using std::endl;

    using std::string;
    string s = "qweabcabcqwe";
    string t1 = "abc";
    string t2 = "";
    string t3 = "asdasd";

    cout << bruteForce(s, t1, 2) << endl;
    cout << bruteForce(s, t1, 10) << endl;
    cout << bruteForce(s, t2, 10) << endl;
    cout << bruteForce(s, t3) << endl;

    cout << kmp(s, t1, 2) << endl;
    cout << kmp(s, t1, 10) << endl;
    cout << kmp(s, t2, 10) << endl;
    cout << kmp(s, t3) << endl;


}