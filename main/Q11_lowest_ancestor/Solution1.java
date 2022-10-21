package Q11_lowest_ancestor;

public class Solution1 {
    public TreeNode findLCA(TreeNode root, TreeNode p, TreeNode q) {
        if (root == null || root == p || root == q)
            return root;

        boolean is_p_on_left = contain(root.left, p);
        boolean is_q_on_left = contain(root.left, q);

        if (is_p_on_left != is_q_on_left)
            return root;

        TreeNode next_root = is_q_on_left ? root.left : root.right;
        return findLCA(next_root, p, q);
    }

    public boolean contain(TreeNode root, TreeNode x) {
        if (root == null)
            return false;
        if (root == x)
            return true;
        return contain(root.left, x) || contain(root.right, x);
    }
}
