def trap(heights)
  total = 0
  left = 0
  right = heights.length() - 1
  left_max = right_max = 0

  while left < right
    if heights[left] < heights[right]
      if heights[left] >= left_max
        left_max = heights[left]
      else
        total += left_max - heights[left]
      end
      left += 1
    else
      if heights[right] >= right_max
        right_max = heights[right]
      else
        total += right_max - heights[right]
      end
      right -= 1
    end
  end

  return total
end
