class Solution:
    def detect_cycle(self, head):
        if not head:
            return False

        tortoise = head
        hare = head.next

        while hare and hare.next:
            if tortoise == hare:
                return True

            tortoise = tortoise.next
            hare = hare.next.next

        return False

    def find_cycle_beginner(self, head):
        slow = fast = head

        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            if slow == fast:
                break

        if not fast or not fast.next:
            return None

        slow = head
        while slow != fast:
            slow = slow.next
            fast = fast.next

        return slow
