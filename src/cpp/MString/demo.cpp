#include <iostream>

#include "string_match.h"
#include "demo.h"

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