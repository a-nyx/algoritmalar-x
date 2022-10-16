def trap(heights)
  total = 0

  heights.each_with_index do |current_height, current_index|
    left_max = 0
    right_max = 0

    heights.each_with_index do |other_height, other_index|
      if other_index < current_index && other_height > left_max
        left_max = other_height
      elsif other_index > current_index && other_height > right_max
        right_max = other_height
      end
    end

    min_max = [left_max, right_max].min
    if min_max > current_height
      total += min_max - current_height
    end
  end

  return total
end
