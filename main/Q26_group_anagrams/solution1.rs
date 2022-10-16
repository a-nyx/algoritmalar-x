use std::collections::HashMap;

pub struct Solution {}

impl Solution {
    pub fn group_anagrams(strs: Vec<String>) -> Vec<Vec<String>> {
        let mut map: HashMap<Vec<char>, Vec<String>> = HashMap::new();

        for s in strs {
            let mut chars: Vec<char> = s.chars().collect();
            chars.sort_unstable();
            map.entry(chars).or_insert(vec![]).push(s);
        }

        return map.into_values().collect();
    }
}
