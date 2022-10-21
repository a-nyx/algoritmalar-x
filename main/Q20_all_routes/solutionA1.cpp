#include <iostream>
#include <vector>
using namespace std;

class SolutionA1 {
 public:
  bool hasRoute(int size, vector<vector<int>>& edges, int from, int to) {
    vector<bool> visited(size, false);
    edgesToGraph(size, edges);
    return dfs(visited, from, to);
  }

 private:
  vector<vector<int>> graph;

  void edgesToGraph(int size, vector<vector<int>>& edges) {
    graph = vector<vector<int>>(size);
    for (vector<int>& edge : edges) {
      graph[edge[0]].push_back(edge[1]);
      graph[edge[1]].push_back(edge[0]);
    }
  }

  bool dfs(vector<bool>& visited, int from, int to) {
    if (from == to) return true;
    if (visited[from]) return false;

    visited[from] = true;
    for (int neighbour : graph[from]) {
      if (dfs(visited, neighbour, to)) {
        return true;
      }
    }
    return false;
  }
};
