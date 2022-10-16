class SolutionB1 {
  func maxProfit(_ prices: [Int], _ start: Int = 0) -> Int {
    if start >= prices.count - 1 {
      return 0
    }

    var maxTotalProfit = 0

    for buyIndex in start ..< prices.count {
      var totalProfit = 0

      for sellIndex in buyIndex + 1 ..< prices.count {
        if prices[sellIndex] > prices[buyIndex] {
          var profit = prices[sellIndex] - prices[buyIndex] + maxProfit(prices, sellIndex + 1)
          if profit > totalProfit {
            totalProfit = profit
          }
        }
      }

      if totalProfit > maxTotalProfit {
        maxTotalProfit = totalProfit
      }
    }

    return maxTotalProfit
  }
}
