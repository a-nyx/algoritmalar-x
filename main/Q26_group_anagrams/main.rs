// mod solution1;
mod solution2;
// mod starter_code;

fn main() {
    let strs: Vec<&str> = vec![
        "ahahah",
        "sabitlik",
        "kalite",
        "hahaha",
        "okek",
        "theysee",
        "esir",
        "telaki",
        "istikbal",
        "tekila",
        "basitlik",
        "balistik",
        "ekok",
        "reis",
        "theeyes",
        "asdfghjkasdfghjk",
        "asasdfdfghghjkjk",
        "nomoreanagrams",
    ];
    let strings = strs.iter().map(|s| s.to_string()).collect();

    // let groups: Vec<Vec<String>> = solution1::Solution::group_anagrams(strings);
    let groups: Vec<Vec<String>> = solution2::Solution::group_anagrams(strings);
    // let groups: Vec<Vec<String>> = starter_code::Solution::group_anagrams(strings);

    for group in &groups {
        println!("{:?}", group);
    }
}
