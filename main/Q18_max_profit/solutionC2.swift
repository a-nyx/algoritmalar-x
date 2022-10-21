class SolutionC2 {
  func maxProfit(_ prices: [Int]) -> Int {
    if prices.count < 2 {
      return 0
    }

    var profits_left = [0]
    var min_left = prices[0]
    var max_profit_left = 0
    for i in 1 ..< prices.count {
      let profit = prices[i] - min_left
      if profit > max_profit_left {
        max_profit_left = profit
      }
      if prices[i] < min_left {
        min_left = prices[i]
      }
      profits_left.append(max_profit_left)
    }

    var profits_right = [0]
    var max_right = prices.last!
    var max_profit_right = 0
    for i in (0 ... prices.count - 2).reversed() {
      let profit = max_right - prices[i]
      if profit > max_profit_right {
        max_profit_right = profit
      }
      if prices[i] > max_right {
        max_right = prices[i]
      }
      profits_right.append(max_profit_right)
    }

    var max_profit = 0
    for i in 0 ..< prices.count {
      let profit = profits_left[i] + profits_right[prices.count - 1 - i]
      if profit > max_profit {
        max_profit = profit
      }
    }
    return max_profit
  }
}
