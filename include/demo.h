#ifndef _DEMO_H
#define _DEMO_H

#include <string>
#include <vector>

void demo();

/**
 * @brief Brute-Force 算法实现串的匹配。
 * @param s 主串。
 * @param t 子串。
 * @param pos 主串起始位置，缺省值为 0。
 * @note 需要包含头文件 string。
 * @return 成功返回位置序号，否则返回 -1。
 */
int bruteForce(const std::string & s, const std::string & t, const int pos = 0);


/**
 * @brief next 数组初始化，不含 next[0]，它已被初始化为 0。
 * @param t 上次与 next 的第 i 位比较的位置，每次计算 next[i] 时，t 会被初始化为 i。
 * @param i next 数组的第 i 位。
 * @param next next 数组。
 * @note 需要包含头文件 string、vector。
 * @param T 字串。
 */
void next_init(int t, int i, std::vector<int> & next, const std::string & T);

/**
 * @brief KMP 算法实现串的匹配。
 * @param s 主串。
 * @param t 子串。
 * @param pos 主串起始位置，缺省值为 0。
 * @note 需要包含头文件 string、vector。
 * @return 成功返回位置序号，否则返回 -1。
 */
int kmp(const std::string & s, const std::string & t, const int pos = 0);

#endif
