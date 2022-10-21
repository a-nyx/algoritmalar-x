class Node:
    def __init__(self, number):
        self.data = number
        self.next = None


class LinkedList:
    def __init__(self, list):
        self.head = current = Node(list[0])
        for i in range(1, len(list)):
            current.next = Node(list[i])
            current = current.next

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
