package Q10_generate_parens;

import java.util.*;

public class Solution2 {
    public static List<String> generateParentheses(int n) {
        List<String> list = new ArrayList<String>();

        if (n == 0) {
            list.add("");
        }
        for (int k = 0; k < n; k++) {
            for (String inside : generateParentheses(k)) {
                for (String right : generateParentheses(n - k - 1)) {
                    list.add("(" + inside + ")" + right);
                }
            }
        }
        return list;
    }

    public static List<String> generateParenthesesDP(int n) {
        Map<Integer, List<String>> solutions = new HashMap<Integer, List<String>>();
        solutions.put(0, Arrays.asList(""));

        for (int k = 1; k <= n; k++) {
            List<String> list = new ArrayList<String>();
            for (int i = 0; i < k; i++) {
                for (String inside : solutions.get(i)) {
                    for (String right : solutions.get(k - i - 1)) {
                        list.add("(" + inside + ")" + right);
                    }
                }
            }
            solutions.put(k, list);
        }
        return solutions.get(n);
    }
}
