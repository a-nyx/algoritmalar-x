// mod solution1;
// mod solution2;
mod solution3;
// mod starter_code;

fn main() {
    let nums = vec![8, 2, 6, 1, 8, 8, 8, 2, 1, 4, 6, 6];
    let k = 2;

    // let pops = solution1::Solution::top_k_frequent(nums, k);
    // let pops = solution2::Solution::top_k_frequent(nums, k);
    let pops = solution3::Solution::top_k_frequent(nums, k);
    // let pops = starter_code::Solution::top_k_frequent(nums, k);

    println!("{:?}", pops);
}
