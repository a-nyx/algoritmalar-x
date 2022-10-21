public class Solution1
{
  public static bool IsPalindromePermutation(String str)
  {
    Dictionary<char, int> counts = new Dictionary<char, int>();
    foreach (char c in str)
    {
      if (c == ' ') continue;

      if (counts.ContainsKey(c))
      {
        counts[c]++;
      }
      else
      {
        counts[c] = 1;
      }
    }
    bool seenOdd = false;
    foreach (int count in counts.Values)
    {
      if (count % 2 == 0) continue;

      if (seenOdd) return false;
      else seenOdd = true;
    }
    return true;
  }

  public static bool IsPalindromePermutation2(String str)
  {
    Dictionary<char, int> counts = new Dictionary<char, int>();
    int countOdd = 0;
    foreach (char c in str)
    {
      if (c == ' ') continue;

      if (counts.ContainsKey(c))
      {
        counts[c]++;
      }
      else
      {
        counts[c] = 1;
      }
      if (counts[c] % 2 == 1)
      {
        countOdd++;
      }
      else
      {
        countOdd--;
      }
    }
    return countOdd <= 1;
  }
}
