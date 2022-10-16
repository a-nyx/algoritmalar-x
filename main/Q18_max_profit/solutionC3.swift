class SolutionC3 {
  func maxProfit(_ prices: [Int]) -> Int {
    var first_buy = Int.max
    var first_profit = 0
    var second_buy = Int.max
    var second_profit = 0

    for price in prices {
      first_buy = min(first_buy, price)
      first_profit = max(first_profit, price - first_buy)
      second_buy = min(second_buy, price - first_profit)
      second_profit = max(second_profit, price - second_buy)
    }
    return second_profit
  }
}
