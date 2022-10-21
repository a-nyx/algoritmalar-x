class Solution:
    def delete_dups(self, head):
        current = head
        while current and current.next:
            runner = current
            while runner.next:
                if runner.next.data == current.data:
                    runner.next = runner.next.next
                else:
                    runner = runner.next
            current = current.next
