#include <iostream>
#include <map>
#include <vector>
using namespace std;

class SolutionB2 {
 public:
  vector<vector<int>> findAllRoutes(vector<vector<int>>& graph) {
    target = graph.size() - 1;
    return getRoutes(graph, start);
  }

 private:
  const int start = 0;
  int target;
  map<int, vector<vector<int>>> memo;

  vector<vector<int>> getRoutes(vector<vector<int>>& graph, int node) {
    if (memo.find(node) != memo.end()) {
      return memo[node];
    }

    if (node == target) {
      memo[node] = vector<vector<int>>{{target}};
      return memo[node];
    }

    vector<vector<int>> paths;

    for (int next : graph[node]) {
      for (vector<int>& path : getRoutes(graph, next)) {
        vector<int> newPath{node};
        newPath.insert(newPath.end(), path.begin(), path.end());
        paths.push_back(newPath);
      }
    }

    memo[node] = paths;
    return memo[node];
  }
};
