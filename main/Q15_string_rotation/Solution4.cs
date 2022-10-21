public class Solution4
{
  public bool RotateString(string s1, string s2)
  {
    if (s1.Length != s2.Length) return false;
    if (s1 == "") return true;

    return this.Contains(s1 + s1, s2);
  }

  public bool Contains(string haystack, string needle)
  {
    int[] lps = this.createLPS(needle);
    int needlePointer = 0;

    for (int haystackPointer = 0; haystackPointer < haystack.Length; haystackPointer++)
    {
      if (haystack[haystackPointer] == needle[needlePointer])
      {
        needlePointer++;
      }
      else if (needlePointer != 0)
      {
        needlePointer = lps[needlePointer - 1];
        haystackPointer--;
      }

      if (needlePointer == needle.Length) return true;
    }
    return false;
  }

  public int[] createLPS(string s)
  {
    int[] lps = new int[s.Length];
    lps[0] = 0;
    int prevLPS = 0;

    for (int i = 1; i < s.Length; i++)
    {
      if (s[i] == s[prevLPS])
      {
        lps[i] = ++prevLPS;
      }
      else if (prevLPS == 0)
      {
        lps[i] = 0;
      }
      else
      {
        prevLPS = lps[prevLPS - 1];
        i--;
      }
    }
    return lps;
  }
}
