class Solution:
    def __init__(self):
        self.longest = 0

    def LIS_helper(self, arr, index):
        maximum_so_far = 1

        for i in range(0, index):
            maximum_until_i = self.LIS_helper(arr, i)
            if arr[i] < arr[index]:
                if maximum_until_i + 1 > maximum_so_far:
                    maximum_so_far = maximum_until_i + 1

        if maximum_so_far > self.longest:
            self.longest = maximum_so_far

        return maximum_so_far

    def longest_increasing_subsequence(self, arr):
        self.LIS_helper(arr, len(arr)-1)
        return self.longest


# TESTING
test_cases = [
    # [input_array, expected_result]
    [[0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 10],
    [[10, 22, 9, 33, 21, 50, 41, 60, 80], 6],
    [[10, 9, 2, 5, 3, 7, 101, 18], 4],
    [[7, 7, 7, 7, 7, 7, 7], 1],
    [[99, 44, 55, 2, 66, 3, 4, 5], 4],
    [[0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15], 6],
    [[3, 2, 1, 0], 1],
    [[99], 1],
    [[50, 3, 10, 7, 40, 80], 4],
    [[11, 1, 12, 2, 13, 3, 14, 4, 15, 5, 16, 6], 6],
    [[1, 3, 6, 7, 9, 4, 10, 5, 6], 6]
]

is_failed = False
for [arr, expected_result] in test_cases:
    actual_result = Solution().longest_increasing_subsequence(arr)
    if actual_result != expected_result:
        is_failed = True
        print("FAILED: arr:", arr, "expected_result:",
              expected_result, "actual_result:", actual_result)
        break

if not is_failed:
    print("All test cases passed.")
