#include <iostream>
#include <vector>
using namespace std;

class SolutionB1 {
 public:
  vector<vector<int>> findAllRoutes(vector<vector<int>>& graph) {
    target = graph.size() - 1;
    vector<int> route{start};
    backtrack(graph, route, start);
    return routes;
  }

 private:
  vector<vector<int>> routes;
  const int start = 0;
  int target;

  void backtrack(vector<vector<int>>& graph, vector<int>& route, int node) {
    if (node == target) {
      routes.push_back(route);
      return;
    }

    for (int next : graph[node]) {
      route.push_back(next);
      backtrack(graph, route, next);
      route.pop_back();
    }
  }
};
