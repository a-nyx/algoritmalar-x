class SolutionD2 {
  func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
    if prices.count <= 0 || k <= 0 {
      return 0
    }

    var start = 0
    var end = 0
    var transactions = [[Int]]()

    for i in 1 ..< prices.count {
      if prices[i] >= prices[i - 1] {
        end = i
      } else {
        if end > start {
          transactions.append([start, end])
        }
        start = i
      }
    }
    if end > start {
      transactions.append([start, end])
    }

    while transactions.count > k {
      var delete_index = 0
      var min_delete_loss = Int.max
      for i in 0 ..< transactions.count {
        let loss = prices[transactions[i][1]] - prices[transactions[i][0]]
        if loss < min_delete_loss {
          min_delete_loss = loss
          delete_index = i
        }
      }

      var merge_index = 0
      var min_merge_loss = Int.max
      for i in 1 ..< transactions.count {
        let loss = prices[transactions[i - 1][1]] - prices[transactions[i][0]]
        if loss < min_merge_loss {
          min_merge_loss = loss
          merge_index = i
        }
      }

      if min_delete_loss <= min_merge_loss {
        transactions.remove(at: delete_index)
      } else {
        transactions[merge_index - 1][1] = transactions[merge_index][1]
        transactions.remove(at: merge_index)
      }
    }

    var profit = 0
    for transaction in transactions {
      profit += prices[transaction[1]] - prices[transaction[0]]
    }
    return profit
  }
}
