class SolutionB2 {
  func maxProfit(_ prices: [Int]) -> Int {
    var maxProfit = 0
    var valley = Int.max
    var peak = Int.min
    var i = 0
    while i < prices.count - 1 {
      while i < prices.count - 1, prices[i] >= prices[i + 1] {
        i += 1
      }
      valley = prices[i]
      while i < prices.count - 1, prices[i] <= prices[i + 1] {
        i += 1
      }
      peak = prices[i]
      maxProfit += peak - valley
    }
    return maxProfit
  }
}
