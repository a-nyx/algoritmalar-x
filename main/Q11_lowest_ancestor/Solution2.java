package Q11_lowest_ancestor;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Stack;

public class Solution2 {
    public TreeNode findLCA(TreeNode root, TreeNode p, TreeNode q) {

        HashMap<TreeNode, TreeNode> parents = new HashMap<>();
        Stack<TreeNode> stack = new Stack<TreeNode>();

        parents.put(root, null);
        stack.add(root);

        while (!parents.containsKey(p) || !parents.containsKey(q)) {
            TreeNode current = stack.pop();
            if (current.left != null) {
                parents.put(current.left, current);
                stack.push(current.left);
            }
            if (current.right != null) {
                parents.put(current.right, current);
                stack.push(current.right);
            }
        }

        HashSet<TreeNode> pAncestors = new HashSet<>();
        while (p != null) {
            pAncestors.add(p);
            p = parents.get(p);
        }

        while (!pAncestors.contains(q)) {
            q = parents.get(q);
        }

        return q;
    }
}
