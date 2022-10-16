def min_sub_array_len(target, nums)
  min_length = nums.length() + 1
  sum_list = Array.new(nums.length(), 0)

  sum_list[0] = nums[0]
  for i in 1..nums.length() - 1
    sum_list[i] = sum_list[i - 1] + nums[i]
  end

  for left in 0..nums.length() - 1
    for right in left..nums.length() - 1
      sum = sum_list[right] - sum_list[left] + nums[left]
      if sum >= target && min_length > right - left + 1
        min_length = right - left + 1
        break
      end
    end
  end

  return min_length == nums.length() + 1 ? 0 : min_length
end
