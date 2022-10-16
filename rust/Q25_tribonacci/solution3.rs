pub struct Solution {}

impl Solution {
    pub fn tribonacci(n: i32) -> i32 {
        if n < 2 {
            return n;
        }

        let n = n as usize;
        let mut dp = vec![0; n + 1];
        dp[1] = 1;
        dp[2] = 1;

        for i in 3..=n {
            dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3];
        }

        return dp[n];
    }
}
