from linked_list import LinkedList
from solution1 import Solution
# from solution2 import Solution2

solution = Solution()

# TESTING
test_cases = [
    # [linked_list_data, cycle_beginner_index]
    [
        [2, 3, 7, 3, 9, 1, 0], 2
    ],
    [
        [2, 3, 7, 3, 9, 1, 0], None
    ],
    [
        [5, 5, 5], 1
    ],
    [
        [9], 0
    ],
    [
        [], None
    ],
    [
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 9
    ],
    [
        [3, 3, 3, 3, 3, 3], None
    ]
]

is_failed = False
for [linked_list_data, cycle_beginner_index] in test_cases:

    ll = LinkedList(linked_list_data, cycle_beginner_index)

    has_cycle = solution.detect_cycle(ll.head)
    cycle_beginner = solution.find_cycle_beginner(ll.head)

    if has_cycle != (cycle_beginner_index is not None) or \
            cycle_beginner != ll.get_node_by_index(cycle_beginner_index):

        is_failed = True
        print("FAILED: \ninitial:", linked_list_data,
              "\ncycle_beginner_index:", cycle_beginner_index,
              "\nreturning node data:", cycle_beginner)
        break

if not is_failed:
    print("All test cases passed.")
