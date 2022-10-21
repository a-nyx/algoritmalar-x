import java.util.LinkedList;
import java.util.Queue;

class Item {
  public TreeNode node;
  public int index;
  public int left_border;
  public int right_border;

  public Item(TreeNode node, int index, int left_border, int right_border) {
    this.node = node;
    this.index = index;
    this.left_border = left_border;
    this.right_border = right_border;
  }
}

public class Solution2 {

  public static TreeNode createBST(int[] array) {
    if (array.length == 0) {
      return null;
    }

    Queue<Item> queue = new LinkedList<>();
    int middleIndex = array.length / 2;
    TreeNode root = new TreeNode(array[middleIndex]);
    queue.add(new Item(root, middleIndex, 0, array.length - 1));

    while (queue.peek() != null) {
      Item current = queue.poll();

      if (current.index - current.left_border > 0) {
        int left_middleIndex = (current.left_border + current.index - 1) / 2;
        TreeNode left = new TreeNode(array[left_middleIndex]);
        current.node.left = left;
        queue.add(new Item(left, left_middleIndex, current.left_border, current.index - 1));
      }

      if (current.right_border - current.index > 0) {
        int right_middleIndex = (current.index + current.right_border + 1) / 2;
        TreeNode right = new TreeNode(array[right_middleIndex]);
        current.node.right = right;
        queue.add(new Item(right, right_middleIndex, current.index + 1, current.right_border));
      }
    }

    return root;
  }
}
