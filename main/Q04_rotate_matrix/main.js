const rotateMatrix = require('./solution1');
// const rotateMatrix = require('./solution2');
// const rotateMatrix = require('./starter_code');

const isEqualMatrix = (m1, m2) => {
  for (let i = 0; i < m1.length; i++)
    for (let k = 0; k < m1[0].length; k++)
      if (m1[i][k] !== m2[i][k]) return false;
  return true;
};

// TESTING
testCases = [
  [[[0]], [[0]]],
  [
    [
      [1, 2],
      [3, 4],
    ],
    [
      [3, 1],
      [4, 2],
    ],
  ],
  [
    [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
    ],
    [
      [7, 4, 1],
      [8, 5, 2],
      [9, 6, 3],
    ],
  ],
  [
    [
      [0, 1, 1, 0],
      [4, 0, 0, 2],
      [4, 0, 0, 2],
      [0, 3, 3, 0],
    ],
    [
      [0, 4, 4, 0],
      [3, 0, 0, 1],
      [3, 0, 0, 1],
      [0, 2, 2, 0],
    ],
  ],
  [
    [
      [1, 2, 3, 4, 5],
      [6, 7, 8, 9, 10],
      [11, 12, 13, 14, 15],
      [16, 17, 18, 19, 20],
      [21, 22, 23, 24, 25],
    ],
    [
      [21, 16, 11, 6, 1],
      [22, 17, 12, 7, 2],
      [23, 18, 13, 8, 3],
      [24, 19, 14, 9, 4],
      [25, 20, 15, 10, 5],
    ],
  ],
];

let isFailed = false;
for (let i = 0; i < testCases.length; i++) {
  const testCase = testCases[i];
  const original = testCase[0];
  const expected = testCase[1];
  rotateMatrix(original);

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
