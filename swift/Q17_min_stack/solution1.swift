class MinStack1 {
  private var stack: Stack = .init()
  private var mins: Stack = .init()

  func push(_ val: Int) {
    mins.push(mins.isEmpty ? val : min(mins.topItem, val))
    stack.push(val)
  }

  func pop() -> Int {
    mins.pop()
    return stack.pop()
  }

  func top() -> Int {
    stack.topItem
  }

  func getMin() -> Int {
    mins.topItem
  }

  var description: String {
    return stack.description
  }
}

// ARRAY SOLUTION
// class MinStack {
//   private var stack: [(val: Int, min: Int)] = []

//   func push(_ val: Int) {
//     stack.append((val, min(stack.isEmpty ? Int.max : stack.last!.min, val)))
//   }

//   func pop() {
//     stack.removeLast().val
//   }

//   func top() -> Int {
//     stack.last!.val
//   }

//   func getMin() -> Int {
//     stack.last!.min
//   }

//   var description: String {
//     return stack.description
//   }
// }
