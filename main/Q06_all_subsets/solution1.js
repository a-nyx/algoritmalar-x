const examples = require('./tests');

const all_subsets = nums => {
  if (nums.length === 0) return [[]];

  let last_element = nums.pop();
  let subsets = all_subsets(nums);
  let length_without_last = subsets.length;

  for (let i = 0; i < length_without_last; i++) {
    subsets.push(subsets[i].concat(last_element));
  }

  return subsets;
};

for (let example of examples) {
  console.log('Set: ', example);
  console.log('Subsets: ', all_subsets(example));
  console.log('-----------------');
}
