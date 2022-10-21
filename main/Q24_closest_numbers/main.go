package main

import "fmt"

func main() {
	list := []int{4, 4, 5, 6, 7, 7, 8, 11, 11, 12}
	k := 3
	number := 9

	closest_numbers := findClosestElements1(list, k, number)
	// closest_numbers := findClosestElements2(list, k, number)
	// closest_numbers := findClosestElements3(list, k, number)
	// closest_numbers := findClosestElements4(list, k, number)

	fmt.Println("Closest numbers: ", closest_numbers)
	fmt.Println("Original list: \t", list)
}

func abs(m int, n int) int {
	if m-n < 0 {
		return n - m
	} else {
		return m - n
	}
}
