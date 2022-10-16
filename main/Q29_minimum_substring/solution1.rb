def min_window(haystack, needle)
  return "" if haystack.empty? || needle.empty?
  return "" if needle.length() > haystack.length()

  char_counts = Hash.new(0)
  needle.split("").each do |char|
    char_counts[char] += 1
  end
  req_count = needle.length()

  answer_left = -1
  answer_right = haystack.length()

  for left_pointer in 0...haystack.length()
    for right_pointer in left_pointer...haystack.length()
      isMatch = compare_window(haystack, left_pointer, right_pointer,
                               char_counts.clone, req_count)

      if isMatch && right_pointer - left_pointer < answer_right - answer_left
        answer_right = right_pointer
        answer_left = left_pointer
        break
      end

      break if isMatch
    end
  end

  return "" if answer_left == -1
  return haystack[answer_left...answer_right + 1]
end

def compare_window(haystack, w_start, w_end, char_counts, req_count)
  for i in w_start...w_end + 1
    next_char = haystack[i]
    if not char_counts.key?(next_char)
      next
    end

    if char_counts[next_char] > 0
      req_count -= 1
    end
    char_counts[next_char] -= 1

    if req_count == 0
      return true
    end
  end
  return false
end
