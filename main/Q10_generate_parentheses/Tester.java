package Q10_generate_parentheses;

import java.util.*;

public class Tester {
    public static void main(String[] args) {
        for (int i = 1; i < 5; i++) {
            List<String> list = Solution1B.generateParentheses(i);
            System.out.println("---------------");
            System.out.println("n: " + i + " => size: " + list.size());
            System.out.println(String.join("\n", list));
        }
    }
}
