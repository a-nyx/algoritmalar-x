package main

func change1(amount int, coins []int) int {
	return change1_helper(amount, coins, 0)
}

func change1_helper(amount int, coins []int, coin_index int) int {

	if coin_index >= len(coins) {
		return 0
	}

	ways := 0
	coin := coins[coin_index]

	for remaining := amount; remaining >= 0; remaining -= coin {
		if remaining == 0 {
			ways++
		} else {
			ways += change1_helper(remaining, coins, coin_index+1)
		}
	}

	return ways
}
