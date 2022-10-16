#include <iostream>
#include <map>
#include <queue>
#include <vector>
using namespace std;

class Solution2 {
 public:
  vector<int> findOrder(int numCourses, vector<vector<int>>& prerequisites) {
    edgesToGraph(numCourses, prerequisites);

    q = queue<int>();
    for (int c = 0; c < numCourses; c++) {
      if (dependants[c] == 0) {
        q.push(c);
      }
    }

    emptyQueue();
    return schedule.size() == numCourses ? schedule : vector<int>();
  }

 private:
  vector<int> schedule;
  vector<vector<int>> graph;
  vector<int> dependants;
  queue<int> q;

  void edgesToGraph(int numCourses, vector<vector<int>>& prerequisites) {
    graph = vector<vector<int>>(numCourses);
    dependants = vector<int>(numCourses, 0);

    for (vector<int>& p : prerequisites) {
      graph[p[1]].push_back(p[0]);
      dependants[p[0]]++;
    }
  }

  void emptyQueue() {
    while (!q.empty()) {
      int current = q.front();
      q.pop();
      schedule.push_back(current);

      for (int neighbour : graph[current]) {
        dependants[neighbour]--;
        if (dependants[neighbour] == 0) {
          q.push(neighbour);
        }
      }
    }
  }
};
