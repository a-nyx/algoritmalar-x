var minStack = MinStack1()
// var minStack = MinStack2()
// var minStack = MinStack3()

minStack.push(303)
minStack.push(202)
minStack.push(404)
minStack.push(505)
minStack.push(202)
minStack.push(101)
print("Min: \(minStack.getMin()) -- Stack: \(minStack.description)")

minStack.pop()
print("Min: \(minStack.getMin()) -- Stack: \(minStack.description)")

minStack.pop()
print("Min: \(minStack.getMin()) -- Stack: \(minStack.description)")

minStack.pop()
print("Min: \(minStack.getMin()) -- Stack: \(minStack.description)")

minStack.pop()
print("Min: \(minStack.getMin()) -- Stack: \(minStack.description)")

minStack.pop()
print("Min: \(minStack.getMin()) -- Stack: \(minStack.description)")

minStack.pop()
print("Min: \(minStack.getMin()) -- Stack: \(minStack.description)")
