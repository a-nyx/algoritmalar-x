class SolutionC1 {
  func maxProfit(_ prices: [Int]) -> Int {
    var maxProfit = 0
    for i in 0 ..< prices.count {
      let profit = maxProfitForOne(prices, 0, i) + maxProfitForOne(prices, i + 1, prices.count - 1)
      if profit > maxProfit {
        maxProfit = profit
      }
    }
    return maxProfit
  }

  func maxProfitForOne(_ prices: [Int], _ start: Int, _ end: Int) -> Int {
    if start + 1 > end {
      return 0
    }
    var maxProfit = 0
    var minSoFar = prices[start]
    for i in start + 1 ... end {
      let profit = prices[i] - minSoFar
      if profit > maxProfit {
        maxProfit = profit
      }
      if prices[i] < minSoFar {
        minSoFar = prices[i]
      }
    }
    return maxProfit
  }
}
