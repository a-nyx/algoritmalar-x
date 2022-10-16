public class TreeNode {
  int val;
  TreeNode left;
  TreeNode right;

  TreeNode(int value) {
    val = value;
  }

  public void print(int space) {
    if (right != null) {
      right.print(space + 2);
    }

    String spaces = " ".repeat(space);
    String dashes = space == 0 ? "" : "|- ";
    System.out.println(spaces + dashes + val);

    if (left != null) {
      left.print(space + 2);
    }
  }
}
