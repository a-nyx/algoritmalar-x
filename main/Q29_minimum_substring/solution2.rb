def min_window(haystack, needle)
  return "" if haystack.empty? || needle.empty?
  return "" if needle.length() > haystack.length()

  char_counts = Hash.new(0)
  needle.split("").each do |char|
    char_counts[char] += 1
  end
  req_count = needle.length()

  left_pointer = 0
  answer_left = -1
  answer_right = haystack.length()

  haystack.each_char.with_index do |right_char, right_pointer|
    if char_counts.key?(right_char)
      if char_counts[right_char] > 0
        req_count -= 1
      end
      char_counts[right_char] -= 1
    end

    while req_count == 0
      if right_pointer - left_pointer < answer_right - answer_left
        answer_right = right_pointer
        answer_left = left_pointer
      end

      left_char = haystack[left_pointer]
      if char_counts.key?(left_char)
        char_counts[left_char] += 1
        if char_counts[left_char] > 0
          req_count += 1
        end
      end
      left_pointer += 1
    end
  end

  return "" if answer_left == -1
  return haystack[answer_left...answer_right + 1]
end
