package xyz.meyok.algorithm.mstring;

import java.util.ArrayList;
import java.util.List;

public class StringMatch {

    /**
     * 串的匹配，brute-force算法。
     * @author meyok
     * @param s 主串
     * @param t 子串
     * @param pos 在主串匹配的起始位置
     * @return 匹配到的主串位置，-1 为未匹配成功。
     */
    public static int bruteForce(String s, String t, int pos) {

        if (pos < 0) { pos = 0; }

        int start = pos;
        int sLen = s.length();
        int tLen = t.length();

        while (start <= sLen - tLen) {
            if (s.substring(start, start + tLen).equals(t)) { return start; }
            ++start;
        }

        return -1;
    }

    /**
     * 用于初始化 next 数组。这是个递归函数，初始化第 i 项时，前面的项需要被初始化。
     * @param T 串
     * @param next next 数组
     * @param i next 数组的第 i 项
     * @param j 本次寻找最长前后缀的串的位数，第一次调用时被初始化为 i。
     * @return next 第 i 项应该被初始化的值
     */
    private static int nextInit(String T, List<Integer> next, int i, int j) {
        if (i == 0) { return 0; }
        j = next.get(j - 1);
        return T.charAt(j) == T.charAt(i) ? j + 1
                : (j == 0 ? 0
                : nextInit(T, next, i, j));
    }

    /**
     * 串的匹配，kmp算法。
     * @param s 主串
     * @param t 子串
     * @param pos 在主串匹配的起始位置
     * @return 匹配到的主串位置，-1 为未匹配成功。
     */
    public static int kmp(String s, String t, int pos) {

        if (pos < 0) { pos = 0; }

        int i = pos;
        int j = 0;
        int start = pos;

        int sLen = s.length();
        int tLen = t.length();

        List<Integer> next = new ArrayList<>();
        for (int m = 0; m < tLen; m++) { next.add(nextInit(t, next, m, m)); }

        while (i < sLen && j < tLen) {
            if (s.charAt(i) == t.charAt(j)) { ++i; ++j; }
            else
            {
                if (j == 0) { i = ++start; }
                else
                {
                    start += j - next.get(j - 1);
                    j = next.get(j - 1);
                }
            }
        }

        return j >= tLen ? start : -1;

    }



}