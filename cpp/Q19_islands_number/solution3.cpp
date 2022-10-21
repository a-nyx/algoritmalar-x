#include <iostream>
#include <vector>
using namespace std;

class Solution3 {
 public:
  int numIslands(vector<vector<char>> &grid) {
    rows = grid.size();
    columns = grid[0].size();
    int islands = 0;

    vector<vector<int>> adjacency(rows * columns);
    fillAdjacencyList(grid, adjacency);

    vector<bool> visited(rows * columns, false);

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < columns; c++) {
        int cellCode = r * columns + c;
        if (grid[r][c] == '1' && !visited[cellCode]) {
          islands++;
          dfs(adjacency, visited, cellCode);
        }
      }
    }

    return islands;
  }

 private:
  int rows;
  int columns;

  void fillAdjacencyList(vector<vector<char>> &grid, vector<vector<int>> &adjacency) {
    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < columns; c++) {
        if (grid[r][c] == '1') {
          int cellCode = r * columns + c;
          if (r - 1 >= 0 && grid[r - 1][c] == '1') {
            adjacency[cellCode].push_back(cellCode - columns);
          }
          if (c + 1 < columns && grid[r][c + 1] == '1') {
            adjacency[cellCode].push_back(cellCode + 1);
          };
          if (r + 1 < rows && grid[r + 1][c] == '1') {
            adjacency[cellCode].push_back(cellCode + columns);
          };
          if (c - 1 >= 0 && grid[r][c - 1] == '1') {
            adjacency[cellCode].push_back(cellCode - 1);
          };
        }
      }
    }
  }

  void dfs(vector<vector<int>> &adjacency, vector<bool> &visited, int cellCode) {
    if (visited[cellCode]) return;

    visited[cellCode] = true;
    for (const int neighbour : adjacency[cellCode]) {
      dfs(adjacency, visited, neighbour);
    }
  }
};
