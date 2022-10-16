pub struct Solution {}

impl Solution {
    pub fn tribonacci(n: i32) -> i32 {
        if n < 2 {
            return n;
        }
        if n == 2 {
            return 1;
        }
        let mut x = 0;
        let mut y = 1;
        let mut z = 1;

        for _i in 3..=n {
            let next = x + y + z;
            x = y;
            y = z;
            z = next;
        }

        return z;
    }
}
