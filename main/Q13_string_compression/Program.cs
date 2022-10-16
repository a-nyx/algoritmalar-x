namespace Q13_string_compression
{
  class Program
  {
    public static void Main(string[] args)
    {
      char[] input = { 'a', 'a', 'b', 'b', 'c', 'c', 'c' };
      Console.WriteLine("Input:\t" + string.Join("", input));

      int new_length = Solution1.Compress(input);
      Console.WriteLine("Output:\t" + string.Join("", input));
      Console.WriteLine("New length: " + new_length);
    }
  }
}
