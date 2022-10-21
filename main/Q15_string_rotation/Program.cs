class Program
{
  public static void Main(string[] args)
  {
    string[][] to_be_true = {
      new string[]{"abcde", "cdeab"},
      new string[]{"haha", "ahah"},
      new string[]{"elma", "mael"},
      new string[]{"bbbacddceeb", "ceebbbbacdd"}
    };

    string[][] to_be_false = {
      new string[]{"abcde", "fjshd"},
      new string[]{"haha", "haah"},
      new string[]{"elma", "alme"}
    };

    bool isSuccessful = true;
    string[][] tests;
    bool expected_result;

    for (int i = 0; i < 2; i++)
    {
      if (i == 0)
      {
        tests = to_be_true;
        expected_result = true;
      }
      else
      {
        tests = to_be_false;
        expected_result = false;
      }

      foreach (string[] test in tests)
      {
        bool actual_result = new Solution3().RotateString(test[0], test[1]);
        String test_result = actual_result == expected_result ? "PASSED" : "FAILED";

        if (actual_result != expected_result)
        {
          isSuccessful = false;
        }

        Console.WriteLine($@"{test_result}:
          Expected: {expected_result.ToString()}
          Solution: {actual_result.ToString()}
          Inputs: {test[0]} - {test[1]}");
      }
    }

    if (isSuccessful)
    {
      Console.WriteLine("All tests passed. Yay!");
    }
  }
}
