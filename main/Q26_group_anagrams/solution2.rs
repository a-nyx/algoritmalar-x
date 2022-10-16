use std::collections::HashMap;

pub struct Solution {}

impl Solution {
    pub fn group_anagrams(strs: Vec<String>) -> Vec<Vec<String>> {
        let mut map: HashMap<[u8; 26], Vec<String>> = HashMap::new();

        for s in strs {
            let mut chars = [0u8; 26];
            for c in s.chars() {
                let index = c as u8 - 'a' as u8;
                chars[index as usize] += 1;
            }
            map.entry(chars).or_insert(vec![]).push(s);
        }

        return map.into_values().collect();
    }
}
