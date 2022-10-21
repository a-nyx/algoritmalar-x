const rotateMatrix = matrix => {
  const layerNum = Math.floor(matrix.length / 2);
  for (let layer = 0; layer < layerNum; layer++) {
    let start = layer;
    let end = matrix.length - 1 - layer;
    for (let i = 0; i < end - start; i++) {
      let tempTop = matrix[start][start + i];
      matrix[start][start + i] = matrix[end - i][start];
      matrix[end - i][start] = matrix[end][end - i];
      matrix[end][end - i] = matrix[start + i][end];
      matrix[start + i][end] = tempTop;
    }
  }
};

module.exports = rotateMatrix;
