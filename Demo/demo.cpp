#include <iostream>
#include <string>
#include <vector>

#include "demo.h"


int bruteForce(const std::string & s, const std::string & t, const int pos)
{
    // 比较时，i 为主串的索引，j 为子串的索引。start 为每次匹配时子串在主串比较的起始位置。
    int i, j, start;
    i = start = pos;
    j = 0;

    // 初始化主串与字串的长度
    int sLen = s.length();
    int tLen = t.length();

    // 开始循环比较
    while (i < sLen && j < tLen)
    {
        if (s[i] == t[j]) { ++i; ++j; }
        else { i = ++start; j = 0;}
    }

    // j 到达子串长度说明比较成功
    if (j >= tLen) { return start; }
    else { return -1; }
}


void next_init(int t, int i, std::vector<int> & next, const std::string & T)
{
    t = next[t - 1];
    if (T[t] == T[i]) { next[i] = t + 1; }
    else
    {
        if (t == 0) { next[i] = 0; }
        else { next_init(t, i, next, T); }
    }
}

int kmp(const std::string & s, const std::string & t, const int pos)
{
    // 比较时，i 为主串的索引，j 为子串的索引。start 为每次匹配时子串在主串比较的起始位置。
    int i, j, start;
    i = start = pos;
    j = 0;

    // 初始化主串与字串的长度
    int sLen = s.length();
    int tLen = t.length();

    // 初始化 next 数组
    std::vector<int> next(tLen, 0);
    for (int i = 1; i < tLen; i++)
    {
        int j = i;
        next_init(j, i, next, t);
    }

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
    if (j >= tLen) { return start; }
    else { return -1; }
}

void demo()
{
    using std::cout;
    using std::endl;

    using std::string;
    string s = "qweabcabcqwe";
    string t1 = "abc";
    string t2 = "";

    cout << bruteForce(s, t1, 2) << endl;
    cout << bruteForce(s, t1, 10) << endl;
    cout << bruteForce(s, t2, 10) << endl;

    cout << kmp(s, t1, 2) << endl;
    cout << kmp(s, t1, 10) << endl;
    cout << kmp(s, t2, 10) << endl;


}