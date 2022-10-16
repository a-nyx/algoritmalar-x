use std::collections::BinaryHeap;
use std::collections::HashMap;

pub struct Solution {}

impl Solution {
    pub fn top_k_frequent(nums: Vec<i32>, k: i32) -> Vec<i32> {
        let mut table: HashMap<i32, i32> = HashMap::new();
        for num in nums {
            *table.entry(num).or_insert(0) += 1;
        }

        let mut heap = BinaryHeap::new();
        for (num, count) in table.into_iter() {
            heap.push((-count, num));
            if heap.len() > k as usize {
                heap.pop();
            }
        }

        let mut populars = Vec::new();
        while let Some((_, num)) = heap.pop() {
            populars.push(num);
        }

        return populars;
    }
}
