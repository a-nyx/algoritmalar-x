public class Solution1
{
  public bool RotateString(string s1, string s2)
  {
    if (s1.Length != s2.Length) return false;
    if (s1 == "") return true;

    for (int k = 0; k < s1.Length; k++)
    {
      bool isShifted = true;

      for (int i = 0; i < s1.Length; i++)
      {
        if (s1[(i + k) % s1.Length] != s2[i])
        {
          isShifted = false;
          break;
        }
      }

      if (isShifted) return true;
    }

    return false;
  }
}
