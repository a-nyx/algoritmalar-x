#include "solution1.cpp"
#include "solution2.cpp"
#include "solution3.cpp"
#include "starter_code.cpp"

int main() {
  Solution1 s;
  // Solution2 s;
  // Solution3 s;
  // Solution4 s;

  vector<vector<char>> map1{
      {'1', '1', '0', '0', '0'},
      {'1', '1', '0', '0', '0'},
      {'0', '0', '1', '0', '0'},
      {'0', '0', '0', '1', '1'}};

  vector<vector<char>> map2{
      {'1', '0', '1', '0', '1'},
      {'0', '1', '1', '0', '1'},
      {'0', '0', '0', '0', '0'},
      {'0', '1', '0', '1', '1'}};

  cout << "Number of Islands on Map1: " << s.numIslands(map1) << "\n";
  cout << "Number of Islands on Map2: " << s.numIslands(map2) << "\n";
  return 0;
}
