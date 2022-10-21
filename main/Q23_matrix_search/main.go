package main

import "fmt"

func main() {
	matrix := [][]int{
		{6, 31, 53, 78, 91},
		{8, 33, 59, 79, 94},
		{11, 40, 69, 82, 97},
		{22, 44, 72, 86, 99},
		{29, 52, 77, 89, 101}}

	targets := map[int]bool{
		29:  true,
		33:  true,
		69:  true,
		94:  true,
		99:  true,
		1:   false,
		32:  false,
		61:  false,
		90:  false,
		100: false,
	}

	search := searchMatrix1
	// search := searchMatrix2
	// search := searchMatrix3
	// search := searchMatrix4
	// search := searchMatrix5

	for target, answer := range targets {
		if search(matrix, target) == answer {
			fmt.Println("Passed")
		} else {
			fmt.Println("Failed")
		}
	}
}
