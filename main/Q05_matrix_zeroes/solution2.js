const setMatrixZeroes = matrix => {
  const zeroRow = r => {
    for (let c = 0; c < matrix[r].length; c++) {
      matrix[r][c] = 0;
    }
  };

  const zeroCol = c => {
    for (let r = 0; r < matrix.length; r++) {
      matrix[r][c] = 0;
    }
  };

  let zeroFirstRow = false;
  let zeroFirstCol = false;

  for (let r = 0; r < matrix.length; r++) {
    if (matrix[r][0] === 0) {
      zeroFirstCol = true;
      break;
    }
  }

  for (let c = 0; c < matrix[0].length; c++) {
    if (matrix[0][c] === 0) {
      zeroFirstRow = true;
      break;
    }
  }

  for (let r = 1; r < matrix.length; r++) {
    for (let c = 1; c < matrix[0].length; c++) {
      if (matrix[r][c] === 0) {
        matrix[r][0] = 0;
        matrix[0][c] = 0;
      }
    }
  }

  for (let r = 1; r < matrix.length; r++) {
    if (matrix[r][0] === 0) {
      zeroRow(r);
    }
  }

  for (let c = 1; c < matrix[0].length; c++) {
    if (matrix[0][c] === 0) {
      zeroCol(c);
    }
  }

  if (zeroFirstRow) zeroRow(0);
  if (zeroFirstCol) zeroCol(0);
};

module.exports = setMatrixZeroes;
