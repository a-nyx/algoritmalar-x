package main

func findClosestElements3(list []int, k int, number int) []int {
	left := 0
	right := len(list) - k

	for left < right {
		middle := (left + right) / 2

		if number-list[middle] > list[middle+k]-number {
			left = middle + 1
		} else {
			right = middle
		}
	}

	return list[left : left+k]
}
