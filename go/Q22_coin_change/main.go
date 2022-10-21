package main

import "fmt"

func main() {
	test(3, []int{2}, 0)
	test(25, []int{25}, 1)
	test(5, []int{1, 2, 5}, 4)
	test(69, []int{2, 3, 5, 20}, 161)
}

func test(amount int, coins []int, ways int) {
	isPassed := change1(amount, coins) == ways
	// isPassed := change2(amount, coins) == ways
	// isPassed := change3(amount, coins) == ways

	if isPassed {
		fmt.Println("Passed")
	} else {
		fmt.Println("Failed")
	}
}
