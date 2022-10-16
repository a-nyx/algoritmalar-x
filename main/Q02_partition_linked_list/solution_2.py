class Solution2:
    def partition(self, linkedList, value):
        beforeStart = beforeEnd = afterStart = afterEnd = None
        current = linkedList.head

        while current:
            next = current.next
            current.next = None
            if current.data < value:
                if not beforeStart:
                    beforeStart = current
                    beforeEnd = current
                else:
                    beforeEnd.next = current
                    beforeEnd = current
            else:
                if not afterStart:
                    afterStart = current
                    afterEnd = current
                else:
                    afterEnd.next = current
                    afterEnd = current
            current = next

        if not beforeStart:
            linkedList.head = afterStart
        else:
            beforeEnd.next = afterStart
            linkedList.head = beforeStart
