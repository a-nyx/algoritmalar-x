class Node:
    def __init__(self, number):
        self.data = number
        self.next = None


class LinkedList:
    def __init__(self, list, cycle_beginner_index=None):

        if not list:
            self.head = None
            return

        self.head = current = Node(list[0])
        self.cycle_beginner = self.head if cycle_beginner_index == 0 else None

        for i in range(1, len(list)):
            current.next = Node(list[i])
            current = current.next

            if i == cycle_beginner_index:
                self.cycle_beginner = current

        if cycle_beginner_index is not None:
            current.next = self.cycle_beginner

    def get_cycle_beginner(self):
        return self.cycle_beginner

    def get_node_by_index(self, index=None):
        if index is None:
            return None

        current = self.head
        for i in range(index):
            if current.next is None:
                return None
            current = current.next
        return current

    def __str__(self):
        current = self.head
        report = ''
        while current.next:
            report += str(current.data) + ' -> '
            current = current.next
        report += str(current.data)
        return report

    def compare_with_values(self, values):
        current = self.head
        for value in values:
            if not current or current.data != value:
                return False
            current = current.next
        return current is None
