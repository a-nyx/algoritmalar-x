import 'dart:collection';

class Solution {
  int numSubmatrixSumTarget(List<List<int>> matrix, int target) {
    int count = 0;
    int rows = matrix.length;
    int cols = matrix[0].length;

    List<List<int>> sum_matrix = get_sums(matrix);

    for (int top = 0; top < rows; top++) {
      for (int bottom = top; bottom < rows; bottom++) {
        Map<int, int> map = HashMap();
        map[0] = 1;

        for (int c = 0; c < cols; c++) {
          int sum = sum_matrix[bottom][c];
          if (top > 0) {
            sum -= sum_matrix[top - 1][c];
          }

          count += map[sum - target] ?? 0;
          map[sum] = map.containsKey(sum) ? map[sum]! + 1 : 1;
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
}
