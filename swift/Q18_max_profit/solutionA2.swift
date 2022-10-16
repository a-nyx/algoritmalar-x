class SolutionA2 {
  func maxProfit(_ prices: [Int]) -> Int {
    var maxProfit = 0
    var minSoFar = prices[0]
    for i in 1 ..< prices.count {
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
