package Q10_generate_parens;

import java.util.*;

public class Solution1A {
    public static List<String> generateParentheses(int n) {
        List<String> list = new ArrayList<String>();
        generateAll(list, n);
        deleteInvalid(list);
        return list;
    }

    public static void generateAll(List<String> list, int n) {
        int amount = (int) Math.pow(2, 2 * n);
        for (int i = 0; i < amount; i++) {
            list.add(binaryToString(i, n));
        }
    }

    public static String binaryToString(int binary, int n) {
        char[] chars = new char[2 * n];
        for (int i = 0; i < 2 * n; i++) {
            if ((binary & 1) == 1) {
                chars[i] = '(';
            } else {
                chars[i] = ')';
            }
            binary = binary >> 1;
        }
        return new String(chars);
    }

    public static void deleteInvalid(List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            int open = 0;
            boolean shouldDelete = false;
            for (int k = 0; k < list.get(i).length(); k++) {
                if (list.get(i).charAt(k) == '(') {
                    open++;
                } else {
                    open--;
                }
                if (open < 0) {
                    shouldDelete = true;
                    break;
                }
            }
            if (open != 0) {
                shouldDelete = true;
            }
            if (shouldDelete) {
                list.remove(i);
                i--;
            }
        }
    }
}
