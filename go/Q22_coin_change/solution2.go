package main

func change2(amount int, coins []int) int {
	dp := make([]int, amount+1)
	dp[0] = 1

	for _, coin := range coins {
		for sum := coin; sum <= amount; sum++ {
			dp[sum] += dp[sum-coin]
		}
	}

	return dp[amount]
}
