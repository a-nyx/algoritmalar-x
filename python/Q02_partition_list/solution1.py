class Solution:
    def partition(self, linkedList, value):
        head = linkedList.head
        current = head
        prev = None
        while current:
            if not prev or current.data >= value:
                prev = current
                current = current.next
            else:
                prev.next = current.next
                current.next = head
                head = current
                current = prev.next
        linkedList.head = head
