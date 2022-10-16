package main

import "sort"

func findClosestElements1(list []int, k int, number int) []int {

	sorted_list := make([]int, len(list))
	copy(sorted_list, list)

	sort.SliceStable(sorted_list, func(m int, n int) bool {
		m_diff := abs(number, sorted_list[m])
		n_diff := abs(number, sorted_list[n])
		return m_diff < n_diff
	})

	closest_numbers := sorted_list[:k]
	sort.Ints(closest_numbers)
	return closest_numbers
}
