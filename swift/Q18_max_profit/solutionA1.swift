class SolutionA1 {
  func maxProfit(_ prices: [Int]) -> Int {
    var maxProfit = 0
    for buyIndex in 0 ..< prices.count {
      for sellIndex in buyIndex + 1 ..< prices.count {
        let profit = prices[sellIndex] - prices[buyIndex]
        if profit > maxProfit {
          maxProfit = profit
        }
      }
    }
    return maxProfit
  }
}
