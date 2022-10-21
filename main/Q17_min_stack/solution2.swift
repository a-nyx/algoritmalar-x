class MinStack2 {
  private var stack: Stack = .init()
  private var minsWithIndex: [[Int]] = []

  func push(_ val: Int) {
    stack.push(val)
    if minsWithIndex.isEmpty || val < minsWithIndex.last![0] {
      minsWithIndex.append([val, stack.size])
    }
  }

  func pop() -> Int {
    if stack.size == minsWithIndex.last![1] {
      minsWithIndex.removeLast()
    }
    return stack.pop()
  }

  func top() -> Int {
    stack.topItem
  }

  func getMin() -> Int {
    stack.isEmpty ? -1 : minsWithIndex.last![0]
  }

  var description: String {
    return stack.description
  }
}

// KEEP MINS IN THE SAME STACK
// class MinStack2 {
//   private var stack: Stack = .init()
//   private var minSoFar: Int = .max

//   func push(_ val: Int) {
//     if val <= minSoFar {
//       stack.push(minSoFar)
//       minSoFar = val
//     }
//     stack.push(val)
//   }

//   func pop() -> Int {
//     var topItem = stack.pop()
//     if topItem == minSoFar {
//       minSoFar = stack.pop()
//     }
//     return topItem
//   }

//   func top() -> Int {
//     stack.topItem
//   }

//   func getMin() -> Int {
//     minSoFar
//   }

//   var description: String {
//     return stack.description
//   }
// }
