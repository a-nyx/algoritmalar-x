const setMatrixZeroes = require('./solution1');
// const setMatrixZeroes = require('./solution2');
// const setMatrixZeroes = require('./starter_code');

const isEqualMatrix = (m1, m2) => {
  for (let i = 0; i < m1.length; i++)
    for (let k = 0; k < m1[0].length; k++)
      if (m1[i][k] !== m2[i][k]) return false;
  return true;
};

// TESTING
testCases = [
  [
    [
      [1, 2, 3],
      [4, 0, 6],
      [7, 8, 9],
    ],
    [
      [1, 0, 3],
      [0, 0, 0],
      [7, 0, 9],
    ],
  ],
  [
    [
      [1, 2],
      [3, 0],
    ],
    [
      [1, 0],
      [0, 0],
    ],
  ],
  [[[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]], [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]],
  [
    [
      [0, 2, 3],
      [4, 5, 6],
      [7, 8, 0],
    ],
    [
      [0, 0, 0],
      [0, 5, 0],
      [0, 0, 0],
    ],
  ],
  [
    [[1], [0]],
    [[0], [0]],
  ],
  [[[1]], [[1]]],
];

let isFailed = false;
for (let i = 0; i < testCases.length; i++) {
  const testCase = testCases[i];
  const original = testCase[0];
  const expected = testCase[1];
  setMatrixZeroes(original);

  if (!isEqualMatrix(original, expected)) {
    console.log(`FAILED:`);
    console.log(`Original:`);
    console.table(original);
    console.log(`Expected:`);
    console.table(expected);
    isFailed = true;
    break;
  }
}

if (!isFailed) console.log(`All test cases passed.`);
