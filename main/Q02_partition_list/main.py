from linked_list import LinkedList
from solution1 import Solution
# from solution2 import Solution
# from starter_code import Solution

solution = Solution()

# TESTING
test_cases = [
    # [input_data, value, expected_data]
    [
        [2, 3, 7, 3, 9, 1, 0], 3,
        [2, 1, 0, 3, 7, 3, 9]
    ],
    [
        [1, 4, 3, 2, 5, 2], 3,
        [1, 2, 2, 4, 3, 5]
    ],
    [
        [1, 1, 1, 1, 1, 1], 1,
        [1, 1, 1, 1, 1, 1]
    ],
    [
        [5, 0, 0, 0, 0, 0, 0], 2,
        [0, 0, 0, 0, 0, 0, 5]
    ],
    [
        [11, 10, 9], 10,
        [9, 11, 10]
    ],
    [
        [9, 10, 11], 10,
        [9, 10, 11]
    ]

]


# Testing Solution 1
for [linked_list_data, value, expected_data] in test_cases:
    ll = LinkedList(linked_list_data)
    solution.partition(ll, value)
    print("initial:", linked_list_data,
          "\nvalue:", value,
          "\nreturn:", ll, "\n\n")


#  Testing Solution 2
# is_failed = False
# for [linked_list_data, value, expected_data] in test_cases:
#     ll = LinkedList(linked_list_data)
#     solution.partition(ll, value)
#     if ll.compare_with_values(expected_data) is False:
#         is_failed = True
#         print("FAILED: \ninitial:", linked_list_data,
#               "\nexpected:", expected_data,
#               "\nactual:", ll)
#         break

# if not is_failed:
#     print("All test cases passed.")
