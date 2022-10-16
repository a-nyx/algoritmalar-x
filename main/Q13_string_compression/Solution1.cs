public class Solution1
{
  public static int Compress(char[] chars)
  {
    if (chars.Length < 2) { return chars.Length; }

    char last = chars[0];
    int count = 0;
    int update_index = 0;

    for (int i = 0; i <= chars.Length; i++)
    {
      if (i < chars.Length && chars[i] == last)
      {
        count++;
        continue;
      }

      chars[update_index] = last;
      update_index++;

      if (count > 1)
      {
        string count_str = count.ToString();
        for (int k = 0; k < count_str.Length; k++)
        {
          chars[update_index + k] = count_str[k];
        }
        update_index += count_str.Length;
      }

      last = i < chars.Length ? chars[i] : last;
      count = 1;
    }

    return update_index;
  }
}
