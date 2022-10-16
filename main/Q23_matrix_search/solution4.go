package main

func searchMatrix4(matrix [][]int, target int) bool {
	row := 0
	col := len(matrix[0]) - 1

	for row < len(matrix) && col >= 0 {
		if matrix[row][col] == target {
			return true
		} else if matrix[row][col] < target {
			row++
		} else {
			col--
		}
	}

	return false
}
