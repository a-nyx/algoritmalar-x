package main

func searchMatrix2(matrix [][]int, target int) bool {
	for _, row := range matrix {
		if row[0] > target || row[len(matrix[0])-1] < target {
			continue
		}
		target_index := searchBinary(row, target)
		if target_index != -1 {
			return true
		}
	}
	return false
}

func searchBinary(row []int, target int) int {
	left := 0
	right := len(row) - 1

	for left <= right {
		middle := (left + right) / 2

		if row[middle] == target {
			return middle
		} else if row[middle] > target {
			right = middle - 1
		} else {
			left = middle + 1
		}
	}
	return -1
}
