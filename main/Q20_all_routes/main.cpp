#include "solutionA1.cpp"
#include "solutionB1.cpp"
#include "solutionB2.cpp"
#include "starter_code.cpp"

void testA() {
  SolutionA1 sA;
  // SolutionA sA;

  vector<vector<int>> edgesForA{{0, 1}, {0, 2}, {2, 3}, {2, 5}, {2, 6}, {2, 7}, {6, 7}};

  cout << "Graph A From 0 To 7: " << sA.hasRoute(8, edgesForA, 0, 7) << "\n";  // true
  cout << "Graph A From 2 To 6: " << sA.hasRoute(8, edgesForA, 1, 6) << "\n";  // true
  cout << "Graph A From 6 To 3: " << sA.hasRoute(8, edgesForA, 3, 4) << "\n";  // false
  cout << "Graph A From 7 To 4: " << sA.hasRoute(8, edgesForA, 4, 0) << "\n";  // false
}

void testB() {
  SolutionB1 sB;
  // SolutionB2 sB;
  // SolutionB sB;

  vector<vector<int>> graphForB{{1, 4, 6}, {5, 7}, {3}, {7}, {1}, {}, {2}, {}};
  vector<vector<int>> routes = sB.findAllRoutes(graphForB);

  for (vector<int>& route : routes) {
    for (int node : route) {
      cout << " -> " << node;
    }
    cout << "\n";
  }
}

int main() {
  // testA();
  testB();
  return 0;
}
