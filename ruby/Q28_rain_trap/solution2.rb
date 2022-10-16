def trap(heights)
  total = 0

  left_maxs = Array.new(heights.length(), 0)
  max = 0
  heights.each_with_index do |height, index|
    if height > max
      max = height
    end
    left_maxs[index] = max
  end

  right_maxs = Array.new(heights.length(), 0)
  max = 0
  heights.to_enum.with_index.reverse_each do |height, index|
    if height > max
      max = height
    end
    right_maxs[index] = max
  end

  heights.each_with_index do |height, index|
    min_max = [left_maxs[index], right_maxs[index]].min
    if min_max > height
      total += min_max - height
    end
  end

  return total
end
