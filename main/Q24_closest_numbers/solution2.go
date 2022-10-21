package main

func findClosestElements2(list []int, k int, number int) []int {

	if len(list) <= k {
		return list[:]
	}

	closest_number_index := searchBinary(list, number)

	window_left := closest_number_index - 1
	window_right := closest_number_index

	for window_right-window_left-1 < k {

		if window_left == -1 {
			window_right++
			continue
		}

		if window_right == len(list) {
			window_left--
			continue
		}

		left_diff := abs(number, list[window_left])
		right_diff := abs(number, list[window_right])

		if left_diff <= right_diff {
			window_left--
		} else {
			window_right++
		}
	}

	return list[window_left+1 : window_right]
}

func searchBinary(list []int, number int) int {
	left := 0
	right := len(list) - 1

	for left <= right {
		middle := (left + right) / 2

		if list[middle] == number {
			return middle
		} else if list[middle] > number {
			right = middle - 1
		} else {
			left = middle + 1
		}
	}
	return left
}
