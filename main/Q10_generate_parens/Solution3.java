package Q10_generate_parens;

import java.util.*;

public class Solution3 {
    public static List<String> generateParentheses(int n) {
        List<String> list = new ArrayList<String>();
        backtrack(n, list, new char[2 * n], 0, 0);
        return list;
    }

    public static void backtrack(int n, List<String> list, char[] chars, int open, int close) {
        if (open + close == chars.length) {
            list.add(new String(chars));
            return;
        }

        if (open < n) {
            chars[open + close] = '(';
            backtrack(n, list, chars, open + 1, close);
        }

        if (close < open) {
            chars[open + close] = ')';
            backtrack(n, list, chars, open, close + 1);
        }
    }
}
