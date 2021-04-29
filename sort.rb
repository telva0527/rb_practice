def sort_method(array)
  count = array.size - 2
  limits = (0..count).to_a
  limits.each do |i|
    (0..count - i).each do |x|
      if array[x] > array[x + 1]
        array[x], array[x + 1] = array[x + 1], array[x]
      end
    end
  end
  p array
end

sort_method([10, 8, 3, 5, 2, 4, 11, 18, 20, 33])
