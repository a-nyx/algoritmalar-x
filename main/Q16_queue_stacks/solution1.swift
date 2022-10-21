class MyQueue1 {
    private var s1: Stack = .init()
    private var s2: Stack = .init()

    var description: String {
        return s1.description
    }

    func push(_ x: Int) {
        while !s1.isEmpty {
            s2.push(s1.pop())
        }
        s1.push(x)
        while !s2.isEmpty {
            s1.push(s2.pop())
        }
    }

    func pop() -> Int {
        return s1.pop()
    }

    func peek() -> Int {
        return s1.topItem
    }

    func isEmpty() -> Bool {
        return s1.isEmpty
    }
}

// Solution without using stacks. Using array instead.
// class MyQueue {
//     private var s1: [Int] = []
//     private var s2: [Int] = []

//     func push(_ x: Int) {
//         while !s1.isEmpty {
//             s2.append(s1.removeLast())
//         }
//         s1.append(x)
//         while !s2.isEmpty {
//             s1.append(s2.removeLast())
//         }
//     }

//     func pop() -> Int {
//         return s1.removeLast()
//     }

//     func peek() -> Int {
//         return s1[s1.endIndex - 1]
//     }

//     func isEmpty() -> Bool {
//         return s1.isEmpty
//     }
// }
