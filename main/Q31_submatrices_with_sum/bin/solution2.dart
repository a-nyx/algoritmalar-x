class Solution {
  int numSubmatrixSumTarget(List<List<int>> matrix, int target) {
    int count = 0;
    int rows = matrix.length;
    int cols = matrix[0].length;

    List<List<int>> sum_matrix = get_sums(matrix);

    for (int top = 0; top < rows; top++) {
      for (int bottom = top; bottom < rows; bottom++) {
        for (int left = 0; left < cols; left++) {
          for (int right = left; right < cols; right++) {
            if (target == sum(sum_matrix, top, bottom, left, right)) {
              count++;
            }
          }
        }
      }
    }
    return count;
  }

  List<List<int>> get_sums(List<List<int>> matrix) {
    int rows = matrix.length;
    int cols = matrix[0].length;
    List<List<int>> sum_matrix =
        List.generate(rows, (_) => List.filled(cols, 0));

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        int top_sum = r == 0 ? 0 : sum_matrix[r - 1][c];
        int left_sum = c == 0 ? 0 : sum_matrix[r][c - 1];
        int intersection_sum = r > 0 && c > 0 ? sum_matrix[r - 1][c - 1] : 0;
        sum_matrix[r][c] = top_sum + left_sum - intersection_sum + matrix[r][c];
      }
    }
    return sum_matrix;
  }

  int sum(
      List<List<int>> sum_matrix, int top, int bottom, int left, int right) {
    int top_sum = top == 0 ? 0 : sum_matrix[top - 1][right];
    int left_sum = left == 0 ? 0 : sum_matrix[bottom][left - 1];
    int intersection_sum =
        top > 0 && left > 0 ? sum_matrix[top - 1][left - 1] : 0;
    return sum_matrix[bottom][right] - top_sum - left_sum + intersection_sum;
  }
}
