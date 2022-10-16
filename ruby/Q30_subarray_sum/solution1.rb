def min_sub_array_len(target, nums)
  min_length = nums.length() + 1

  for left in 0..nums.length() - 1
    for right in left..nums.length() - 1
      sum = 0
      for i in left..right
        sum += nums[i]
      end
      if sum >= target && min_length > right - left + 1
        min_length = right - left + 1
        break
      end
    end
  end

  return min_length == nums.length() + 1 ? 0 : min_length
end
