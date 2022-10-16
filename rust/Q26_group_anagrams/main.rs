mod solution1;
// mod solution2;

fn main() {
    let strs: Vec<&str> = vec![
        "ahahah",
        "sabitlik",
        "piç",
        "kalite",
        "hahaha",
        "okek",
        "they see",
        "esir",
        "telaki",
        "istikbal",
        "tekila",
        "kürt",
        "basitlik",
        "balistik",
        "çip",
        "ekok",
        "reis",
        "türk",
        "the eyes",
        "traş",
        "şart",
        "asdfghjkasdfghjk",
        "asasdfdfghghjkjk",
        "no more anagrams",
    ];
    let strings = strs.iter().map(|s| s.to_string()).collect();

    // let groups: Vec<Vec<String>> = solution1::Solution::group_anagrams(strings);
    let groups: Vec<Vec<String>> = solution1::Solution::group_anagrams(strings);

    for group in &groups {
        println!("{:?}", group);
    }
}
