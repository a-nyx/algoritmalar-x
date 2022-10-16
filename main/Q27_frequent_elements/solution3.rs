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
        let length = counts.len() as usize;

        Solution::quickselect(&mut counts, k, 0, length - 1);

        let mut populars = Vec::new();
        for i in 0..k {
            populars.push(counts[length - k + i].0);
        }
        return populars;
    }

    fn quickselect(counts: &mut Vec<(i32, i32)>, k: usize, left: usize, right: usize) {
        if left == right {
            return;
        }

        let mut pivot = (left + right) / 2;
        pivot = Solution::partition(counts, left, right, pivot);

        let length = counts.len() as usize;
        if pivot == length - k {
            return;
        } else if pivot > length - k {
            Solution::quickselect(counts, k, left, pivot - 1);
        } else {
            Solution::quickselect(counts, k, pivot + 1, right);
        }
    }

    fn partition(counts: &mut Vec<(i32, i32)>, left: usize, right: usize, pivot: usize) -> usize {
        let pivot_count = counts[pivot].1;
        counts.swap(pivot, right);

        let mut write_index = left;
        for read_index in left..right + 1 {
            if counts[read_index].1 < pivot_count {
                counts.swap(write_index, read_index);
                write_index += 1;
            }
        }

        counts.swap(write_index, right);
        return write_index;
    }
}
