class Program
{
  public static void Main(string[] args)
  {
    Dictionary<string, bool> tests = new Dictionary<string, bool>{
        {"hahahaha", true},
        {"hahahahaha", false},
        {"asdfgasdf", true},
        {"akdhfgdfdhjkfaggdafjhad", false},
        {"   ", true},
        {"  a ", true},
        {"aaaaaaabbbbbb", true},
        {"ey edip adanada pide ye", true},
        {"xy", false},
        {"abcdefghijklmnopqrstuvwxyz", false}
      };

    bool isSuccessful = true;
    foreach (KeyValuePair<string, bool> entry in tests)
    {
      bool actual_result = Solution2.IsPalindromePermutation2(entry.Key);
      String test_result = actual_result == entry.Value ? "PASSED" : "FAILED";

      if (actual_result != entry.Value)
      {
        isSuccessful = false;
      }

      Console.WriteLine($@"{test_result}:
          Expected: {entry.Value.ToString()}
          Solution: {actual_result.ToString()}
          Input: {entry.Key}");
    }

    if (isSuccessful)
    {
      Console.WriteLine("All tests passed. Yay!");
    }
  }
}
