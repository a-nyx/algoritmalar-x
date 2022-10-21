package Q10_generate_parens;

import java.util.*;

public class Solution1B {
    public static List<String> generateParentheses(int n) {
        List<String> list = new ArrayList<String>();
        generateAll(list, new char[2 * n], 0);
        // generateAllIterative(list, n);
        return list;
    }

    public static void generateAll(List<String> list, char[] chars, int index) {
        if (index == chars.length) {
            String s = new String(chars);
            if (isValid(s)) {
                list.add(s);
            }
            return;
        }
        chars[index] = '(';
        generateAll(list, chars, index + 1);
        chars[index] = ')';
        generateAll(list, chars, index + 1);
    }

    public static boolean isValid(String str) {
        int open = 0;
        for (int k = 0; k < str.length(); k++) {
            if (str.charAt(k) == '(') {
                open++;
            } else {
                open--;
            }
            if (open < 0) {
                return false;
            }
        }
        if (open != 0) {
            return false;
        }
        return true;
    }

    public static void generateAllIterative(List<String> list, int n) {
        list.add("");

        for (int i = 0; i < 2 * n; i++) {
            int current_length = list.size();
            for (int k = 0; k < current_length; k++) {
                String s1 = list.get(0) + "(";
                String s2 = list.get(0) + ")";
                if (i < 2 * n - 1 || isValid(s1)) {
                    list.add(s1);
                }
                if (i < 2 * n - 1 || isValid(s2)) {
                    list.add(s2);
                }
                list.remove(0);
            }
        }
    }
}
