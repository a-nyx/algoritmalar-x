from linked_list import LinkedList
from solution1 import Solution
# from solution2 import Solution
# from starter_code import Solution

solution = Solution()

# TESTING
test_cases = [
    # [input_data, expected_data]
    [
        [9, 5, 6, 9, 2, 5, 5],
        [9, 5, 6, 2]
    ],
    [
        [3, 3, 3, 3, 3, 3],
        [3]
    ],
    [
        [0],
        [0]
    ],
    [
        [1, 1, 1, 2],
        [1, 2]
    ],
    [
        [8, 7, 6, 5, 4, 3, 2, 1],
        [8, 7, 6, 5, 4, 3, 2, 1],
    ],
    [
        [13, 12, 11, 11, 12, 13],
        [13, 12, 11]
    ]
]

is_failed = False
for [linked_list_data, expected_data] in test_cases:
    ll = LinkedList(linked_list_data)
    solution.delete_dups(ll.head)
    if ll.compare_with_values(expected_data) is False:
        is_failed = True
        print("FAILED: \ninitial:", linked_list_data,
              "\nexpected:", expected_data,
              "\nactual:", ll)
        break

if not is_failed:
    print("All test cases passed.")
