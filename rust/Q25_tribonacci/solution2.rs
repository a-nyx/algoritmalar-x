pub struct Solution {}

impl Solution {
    pub fn tribonacci(n: i32) -> i32 {
        if n < 2 {
            return n;
        }
        if n == 2 {
            return 1;
        }

        let mut memo = vec![0; n as usize + 1];
        memo[0] = 0;
        memo[1] = 1;
        memo[2] = 1;
        return Solution::helper(&mut memo, n);
    }

    fn helper(memo: &mut Vec<i32>, n: i32) -> i32 {
        if memo[n as usize] != 0 || n < 3 {
            return memo[n as usize];
        }

        let number = Solution::helper(memo, n - 1)
            + Solution::helper(memo, n - 2)
            + Solution::helper(memo, n - 3);

        memo[n as usize] = number;
        return number;
    }
}
