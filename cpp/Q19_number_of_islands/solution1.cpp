#include <iostream>
#include <vector>
using namespace std;

class Solution1 {
 public:
  int numIslands(vector<vector<char>> &grid) {
    rows = grid.size();
    columns = grid[0].size();
    int islands = 0;

    if (!rows || !columns) return 0;

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < columns; c++) {
        if (grid[r][c] == '1') {
          islands++;
          dfs(grid, r, c);
        }
      }
    }

    return islands;
  };

 private:
  int rows;
  int columns;

  void dfs(vector<vector<char>> &grid, int r, int c) {
    if (r < 0 || c < 0 || r >= rows || c >= columns || grid[r][c] == '0') return;

    grid[r][c] = '0';
    dfs(grid, r - 1, c);
    dfs(grid, r, c + 1);
    dfs(grid, r + 1, c);
    dfs(grid, r, c - 1);
  }
};
