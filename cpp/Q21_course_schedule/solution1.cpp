#include <iostream>
#include <map>
#include <vector>
using namespace std;

class Solution1 {
 public:
  vector<int> findOrder(int numCourses, vector<vector<int>>& prerequisites) {
    edgesToGraph(numCourses, prerequisites);

    schedule = vector<int>();
    isPossible = true;
    states = vector<State>(numCourses, unvisited);

    for (int course = 0; course < numCourses; course++) {
      if (states[course] == unvisited) {
        dfs(course);
      }
    }

    if (!isPossible) {
      return vector<int>();
    }

    reverse(schedule.begin(), schedule.end());
    return schedule;
  }

 private:
  vector<vector<int>> graph;  // pre -> []
  vector<int> schedule;
  enum State { unvisited,
               ongoing,
               completed };
  bool isPossible;
  vector<State> states;

  void edgesToGraph(int numCourses, vector<vector<int>>& prerequisites) {
    graph = vector<vector<int>>(numCourses);
    for (vector<int>& p : prerequisites) {
      graph[p[1]].push_back(p[0]);
    }
  }

  void dfs(int course) {
    if (!isPossible || states[course] == completed) return;

    if (states[course] == ongoing) {
      isPossible = false;
      return;
    }

    states[course] = ongoing;

    for (int neighbour : graph[course]) {
      dfs(neighbour);
    }

    states[course] = completed;
    schedule.push_back(course);
  }
};

// see "Topological Sort"
