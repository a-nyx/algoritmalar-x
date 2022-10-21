# require_relative "solution1"
# require_relative "solution2"
require_relative "solution3"
# require_relative "starter_code"

tests = [
  [40, [2, 3, 9, 14, 6, 11, 21, 9, 17], 3],
  [30, [2, 3, 9, 14, 6, 11, 21, 9, 17], 2],
  [20, [2, 3, 9, 14, 6, 11, 21, 9, 17], 1],
  [99, [2, 3, 9, 14, 6, 11, 21, 9, 17], 0],
  [2, [1, 2, 3, 4, 5], 1],
  [9, [1, 1, 1, 1, 1, 1, 1, 1, 1], 9],
  [7, [6, 4, 1, 3, 4, 3, 5], 2],
  [13, [6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7], 2],
  [13, [6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7], 2],
  [14, [6, 7, 6, 7, 6, 7, 6, 7, 6, 7, 6, 7], 3],
  [100, [0, 20, 0, 20, 0, 20, 0, 20, 0, 20, 0], 9],
]

isAllPassed = true

tests.each do |(target, nums, answer)|
  response = min_sub_array_len target, nums
  if response != answer
    puts "Failed"
    isAllPassed = false
  else
    puts "Passed"
  end
end

puts "Yay!" if isAllPassed
