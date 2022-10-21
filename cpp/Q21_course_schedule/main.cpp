#include "solution1.cpp"
#include "solution2.cpp"

int main() {
  Solution1 s;
  // Solution2 s;

  int numCourses = 8;
  vector<vector<int>> prerequisites{{1, 0}, {2, 4}, {2, 5}, {3, 7}, {6, 4}, {7, 2}, {7, 6}};

  vector<int> schedule = s.findOrder(numCourses, prerequisites);

  for (int course : schedule) {
    cout << " -> " << course;
  }
  cout << endl;

  return 0;
}
