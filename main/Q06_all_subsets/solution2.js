const examples = require('./tests');

const all_subsets = nums => {
  let subsets = [[]];

  for (let i = 0; i < nums.length; i++) {
    let current_length = subsets.length;
    let next_element = nums[i];

    for (let k = 0; k < current_length; k++) {
      subsets.push(subsets[k].concat(next_element));
    }
  }

  return subsets;
};

for (let example of examples) {
  console.log('Set: ', example);
  console.log('Subsets: ', all_subsets(example));
  console.log('-----------------');
}
