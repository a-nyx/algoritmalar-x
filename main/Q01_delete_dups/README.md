# #01: Sıralanmamış Linked List’ten tekrarları silme

[Eng] Remove duplicates from unsorted Linked List  
Çözüm videosu: [Youtube/yazilimx](https://youtu.be/6yway1bD144)

### Referans

_Cracking the Coding Interview_ 2.1 sorusunun aynısı. Benzer sorular: [LeetCode 82](https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/), [LeetCode83](https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/), [LeetCode 1836](https://leetcode.com/problems/remove-duplicates-from-an-unsorted-linked-list/).

### Leetcode

Birebir aynı soru olmasa da [LeetCode83](https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/)'de çözümler test edilebilir. Test etmek için 1) `delete_dups()` metodunun ismi `deleteDuplicates()` yapılmalı, 2) Linked List'in `data` prop'unun ismi `val` yapılmalı, 3) metodun sonuna `return head` eklenmeli. 4) İkinci çözümün başında Linked List'in boş olup olmadığını test etmek için şu eklenmeli:

```
if not head:
  return head
```

### Çalıştırma

`python3 main.py` komutuyla. Farklı çözümler için `main.py` başındaki `import` satırları değiştirilebilir.
