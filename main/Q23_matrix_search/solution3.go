package main

func searchMatrix3(matrix [][]int, target int) bool {
	return searchBox(matrix, target, 0, len(matrix[0])-1, len(matrix)-1, 0)
}

func searchBox(matrix [][]int, target int, top int, right int, bottom int, left int) bool {

	if top > bottom || left > right || target < matrix[top][left] || target > matrix[bottom][right] {
		return false
	}

	middle_col := left + (right-left)/2
	current_row := top

	for current_row <= bottom && matrix[current_row][middle_col] <= target {
		if matrix[current_row][middle_col] == target {
			return true
		}
		current_row++
	}

	return searchBox(matrix, target, current_row, middle_col-1, bottom, left) ||
		searchBox(matrix, target, top, right, current_row-1, middle_col+1)
}
