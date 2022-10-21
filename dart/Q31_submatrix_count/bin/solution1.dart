class Solution {
  int numSubmatrixSumTarget(List<List<int>> matrix, int target) {
    int count = 0;
    int rows = matrix.length;
    int cols = matrix[0].length;

    for (int top = 0; top < rows; top++) {
      for (int bottom = top; bottom < rows; bottom++) {
        for (int left = 0; left < cols; left++) {
          for (int right = left; right < cols; right++) {
            if (target == sum(matrix, top, bottom, left, right)) {
              count++;
            }
          }
        }
      }
    }
    return count;
  }

  int sum(List<List<int>> matrix, int top, int bottom, int left, int right) {
    int sum = 0;
    for (int r = top; r <= bottom; r++) {
      for (int c = left; c <= right; c++) {
        sum += matrix[r][c];
      }
    }
    return sum;
  }
}
