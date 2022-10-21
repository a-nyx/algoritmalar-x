class MyQueue2 {
    private var s_front: Stack = .init()
    private var s_rear: Stack = .init()

    var description: String {
        return "Front: " + s_front.description + " Rear: " + s_rear.description
    }

    func push(_ x: Int) {
        s_rear.push(x)
    }

    func pop() -> Int {
        if s_front.isEmpty {
            while !s_rear.isEmpty {
                s_front.push(s_rear.pop())
            }
        }
        return s_front.pop()
    }

    func peek() -> Int {
        if s_front.isEmpty {
            while !s_rear.isEmpty {
                s_front.push(s_rear.pop())
            }
        }
        return s_front.topItem
    }

    func isEmpty() -> Bool {
        return s_front.isEmpty && s_rear.isEmpty
    }
}

// Solution without using stacks. Using array instead.
// class MyQueue2 {
//     private var s_front: [Int] = []
//     private var s_rear: [Int] = []

//     func push(_ x: Int) {
//         s_rear.append(x)
//     }

//     func pop() -> Int {
//         if s_front.isEmpty {
//             while !s_rear.isEmpty {
//                 s_front.append(s_rear.removeLast())
//             }
//         }
//         return s_front.removeLast()
//     }

//     func peek() -> Int {
//         if s_front.isEmpty {
//             return s_rear[0]
//         }
//         return s_front[s_front.endIndex - 1]
//     }

//     func isEmpty() -> Bool {
//         return s_front.isEmpty && s_rear.isEmpty
//     }
// }
