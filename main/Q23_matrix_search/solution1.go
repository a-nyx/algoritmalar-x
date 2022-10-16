package main

func searchMatrix1(matrix [][]int, target int) bool {
	for _, row := range matrix {
		for _, cell := range row {
			if cell == target {
				return true
			}
		}
	}
	return false
}
