const examples = require('./tests');

const binary_to_subset = (nums, binary) => {
  let subset = [];
  let index = nums.length - 1;

  for (let b = binary; b > 0; b >>>= 1) {
    if ((b & 1) == 1) subset.push(nums[index]);
    index--;
  }

  return subset;
};

const all_subsets = nums => {
  let num_of_subsets = Math.pow(2, nums.length);
  let subsets = [];

  for (let i = 0; i < num_of_subsets; i++) {
    let subset = binary_to_subset(nums, i);
    subsets.push(subset);
  }

  return subsets;
};

for (let example of examples) {
  console.log('Set: ', example);
  console.log('Subsets: ', all_subsets(example));
  console.log('-----------------');
}
