public class Solution3
{
  const int MOD = 1_000_000_007;
  const int PRIME = 113;
  const int PRIME_INVERSE = 893_805_316; // pow(P, MOD-2, MOD)
  long power = 1;

  public bool RotateString(string s1, string s2)
  {
    if (s1.Length != s2.Length) return false;
    if (s1 == "") return true;

    long hashS1 = this.HashString(s1);
    long hashS2 = this.HashString(s2);

    for (int i = 0; i < s1.Length; i++)
    {
      if (hashS1 == hashS2)
      {
        if (s2.Equals(s1.Substring(i) + s1.Substring(0, i)))
        {
          return true;
        }
      }
      hashS1 = UpdateHash(s1[i], hashS1);
    }

    return false;
  }

  public long HashString(string s)
  {
    long hash = 0;
    power = 1;
    foreach (char c in s)
    {
      hash = (hash + power * c) % MOD;
      power = power * PRIME % MOD;
    }
    return hash;
  }

  public long UpdateHash(char c, long hash)
  {
    hash += power * c - c;
    hash %= MOD;
    hash *= PRIME_INVERSE;
    hash %= MOD;
    return hash;
  }
}
