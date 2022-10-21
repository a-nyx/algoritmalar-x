public class Main {
  public static void main(String[] args) {
    int[] array = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    TreeNode root = Solution2.createBST(array);
    root.print(0);
  }
}
