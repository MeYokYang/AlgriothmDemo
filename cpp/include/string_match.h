#ifndef _STRING_MATCH_H
#define _STRING_MATCH_H

#include <string>
#include <vector>


/**
 * @author meyok
 * @brief 串的匹配，brute-force算法。
 * @param s 主串。
 * @param t 子串。
 * @param pos 在主串匹配的起始位置，缺省值为 0。
 * @note 需要包含头文件 string。
 * @return 匹配到的主串位置，-1 为未匹配成功。
 */
int bruteForce(const std::string & s, const std::string & t, int pos = 0);


/**
 * @author meyok
 * @brief 用于初始化 next 数组。这是个递归函数，初始化第 i 项时，前面的项需要被初始化。
 * @param T 串。
 * @param next next 数组。
 * @param i next 数组的第 i 项。
 * @param j 本次寻找最长前后缀的串的位数，第一次调用时被初始化为 i。
 * @note 需要包含头文件 string、vector。
 * @return next 第 i 项应该被初始化的值。
 */
int nextInit(const std::string & T, std::vector<int> & next, int i, int j);

/**
 * @author meyok
 * @brief 串的匹配，kmp算法。
 * @param s 主串。
 * @param t 子串。
 * @param pos 在主串匹配的起始位置，缺省值为 0。
 * @note 需要包含头文件 string、vector。
 * @return 匹配到的主串位置，-1 为未匹配成功。
 */
int kmp(const std::string & s, const std::string & t, int pos = 0);

#endif
