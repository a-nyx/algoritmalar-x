class Solution:
    def detect_cycle(self, head):
        seen = set()

        while head:
            if head in seen:
                return True
            else:
                seen.add(head)
                head = head.next

        return False

    def find_cycle_beginner(self, head):
        seen = set()

        while head:
            if head in seen:
                return head
            else:
                seen.add(head)
                head = head.next

        return None
