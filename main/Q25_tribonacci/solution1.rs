pub struct Solution {}

impl Solution {
    pub fn tribonacci(n: i32) -> i32 {
        if n < 2 {
            return n;
        }
        if n == 2 {
            return 1;
        }
        return Solution::tribonacci(n - 1)
            + Solution::tribonacci(n - 2)
            + Solution::tribonacci(n - 3);
    }
}
