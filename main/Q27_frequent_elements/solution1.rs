use std::collections::HashMap;

pub struct Solution {}

impl Solution {
    pub fn top_k_frequent(nums: Vec<i32>, k: i32) -> Vec<i32> {
        let mut table: HashMap<i32, i32> = HashMap::new();

        for num in nums {
            *table.entry(num).or_insert(0) += 1;
        }

        let mut counts = table.into_iter().collect::<Vec<(i32, i32)>>();
        let k = k as usize;

        if counts.len() > k {
            counts.sort_by(|a, b| b.1.cmp(&a.1));
        }

        let mut populars = vec![0; k];
        for i in 0..k {
            populars[i] = counts[i].0;
        }

        return populars;
    }
}
