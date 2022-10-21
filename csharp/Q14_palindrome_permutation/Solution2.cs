public class Solution2
{
  public static bool IsPalindromePermutation(String str)
  {
    HashSet<char> chars = new HashSet<char>();
    foreach (char c in str)
    {
      if (c == ' ') continue;
      if (chars.Contains(c))
      {
        chars.Remove(c);
      }
      else
      {
        chars.Add(c);
      }
    }
    return chars.Count <= 1;
  }

  public static bool IsPalindromePermutation2(String str)
  {
    int bits = 0;
    foreach (char c in str)
    {
      int value = (int)c - 'a';
      if (0 > value || value > 25) continue;
      bits = bits ^ 1 << value;
    }
    return bits == 0 || (bits & (bits - 1)) == 0;
  }
}
