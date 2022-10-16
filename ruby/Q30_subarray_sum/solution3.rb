def min_sub_array_len(target, nums)
  min_length = nums.length() + 1
  left = 0
  sum = 0

  for right in 0..nums.length() - 1
    sum += nums[right]
    while sum >= target
      if right - left + 1 < min_length
        min_length = right - left + 1
      end
      sum -= nums[left]
      left += 1
    end
  end

  return min_length == nums.length() + 1 ? 0 : min_length
end
