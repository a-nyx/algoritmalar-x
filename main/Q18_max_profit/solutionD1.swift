class SolutionD1 {
  func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
    let days = prices.count

    if days <= 0 || k <= 0 {
      return 0
    }

    var max_profit = 0
    if 2 * k > days { // equal?
      for i in 1 ..< days {
        if prices[i] > prices[i - 1] {
          max_profit += prices[i] - prices[i - 1]
        }
      }
      return max_profit
    }

    var dp = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: -1_000_000_000, count: 2), count: k + 1), count: days)
    dp[0][0][0] = 0
    dp[0][1][1] = -prices[0]

    for i in 1 ..< days {
      for b in 0 ... k {
        dp[i][b][0] = max(dp[i - 1][b][0], dp[i - 1][b][1] + prices[i])
        if b > 0 {
          dp[i][b][1] = max(dp[i - 1][b][1], dp[i - 1][b - 1][0] - prices[i])
        }
      }
    }

    for b in 0 ... k {
      max_profit = max(max_profit, dp[days - 1][b][0])
    }

    return max_profit
  }
}
