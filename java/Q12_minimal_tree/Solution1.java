public class Solution1 {
  public static TreeNode createBST(int[] array) {
    return createBST(array, 0, array.length - 1);
  }

  private static TreeNode createBST(int array[], int start, int end) {
    if (start > end) {
      return null;
    }
    int middle = (start + end) / 2;
    TreeNode root = new TreeNode(array[middle]);
    root.left = createBST(array, start, middle - 1);
    root.right = createBST(array, middle + 1, end);
    return root;
  }
}
