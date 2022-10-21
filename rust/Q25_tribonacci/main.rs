// mod solution1;
mod solution2;
// mod solution3;
// mod solution4;
// mod starter_code;

fn main() {
    let tests: [(i32, i32); 7] = [
        (0, 0),
        (4, 4),
        (9, 81),
        (13, 927),
        (19, 35890),
        (25, 1389537),
        (37, 2082876103),
    ];

    for i in 0..tests.len() {
        // let result = solution1::Solution::tribonacci(tests[i].0);
        let result = solution2::Solution::tribonacci(tests[i].0);
        // let result = solution3::Solution::tribonacci(tests[i].0);
        // let result = solution4::Solution::tribonacci(tests[i].0);
        // let result = starter_code::Solution::tribonacci(tests[i].0);

        print!(
            "{}\n",
            if result == tests[i].1 {
                "Passed"
            } else {
                "Failed"
            }
        );
    }
}
