public class Tester {
  public static void main(String[] args) {
    // Create the tree
    TreeNode root = new TreeNode('B');
    root.left = new TreeNode('U');
    root.right = new TreeNode('K');
    root.left.left = new TreeNode('A');
    root.left.right = new TreeNode('L');
    root.right.left = new TreeNode('E');
    root.right.right = new TreeNode('M');
    root.right.left.left = new TreeNode('U');
    root.right.left.right = new TreeNode('N');

    // Find and print the lowest common ancestor
    TreeNode p = root.right.left.left; // U
    TreeNode q = root.right.right; // M
    TreeNode lca = new Solution1().findLCA(root, p, q);
    System.out.println(p.val + " & " + q.val + " => " + lca.val);
  }
}
