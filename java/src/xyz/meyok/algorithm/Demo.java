package xyz.meyok.algorithm;

import static xyz.meyok.algorithm.mstring.StringMatch.*;

public class Demo {

    public static void main(String[] args) {
        String s = "qweabcabcqwe";
        String t1 = "abc";
        String t2 = "";
        String t3 = "asdasd";

        System.out.println(bruteForce(s, t1, 0));
        System.out.println(bruteForce(s, t1, 10));
        System.out.println(bruteForce(s, t2, 10));
        System.out.println(bruteForce(s, t3, 0));

        System.out.println(kmp(s, t1, 0));
        System.out.println(kmp(s, t1, 10));
        System.out.println(kmp(s, t2, 10));
        System.out.println(kmp(s, t3, 0));

    }

}