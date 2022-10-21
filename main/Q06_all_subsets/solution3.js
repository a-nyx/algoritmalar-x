const examples = require('./tests');

const all_subsets = nums => {
  let subsets = [];

  const build_subset = (start_index, current_subset) => {
    subsets.push([...current_subset]);

    for (let index = start_index; index < nums.length; index++) {
      current_subset.push(nums[index]);
      build_subset(index + 1, current_subset);
      current_subset.pop();
    }
  };

  build_subset(0, []);
  return subsets;
};

for (let example of examples) {
  console.log('Set: ', example);
  console.log('Subsets: ', all_subsets(example));
  console.log('-----------------');
}
