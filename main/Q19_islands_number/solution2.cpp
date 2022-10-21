#include <iostream>
#include <queue>
#include <vector>
using namespace std;

class Solution2 {
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
          bfs(grid, r, c);
        }
      }
    }

    return islands;
  };

 private:
  int rows;
  int columns;
  queue<pair<int, int>> q;
  pair<int, int> nextPair;

  void bfs(vector<vector<char>> &grid, int r, int c) {
    q.push({r, c});

    while (!q.empty()) {
      nextPair = q.front();
      int r = nextPair.first;
      int c = nextPair.second;
      q.pop();

      if (grid[r][c] == '0') continue;

      grid[r][c] = '0';
      if (r - 1 >= 0 && grid[r - 1][c] == '1') q.push({r - 1, c});
      if (c + 1 < columns && grid[r][c + 1] == '1') q.push({r, c + 1});
      if (r + 1 < rows && grid[r + 1][c] == '1') q.push({r + 1, c});
      if (c - 1 >= 0 && grid[r][c - 1] == '1') q.push({r, c - 1});
    }
  }
};
