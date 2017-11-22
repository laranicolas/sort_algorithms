def bubble_sort(array)
  n = array.size
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end
  array
end

a = [4, 3, 2, 1, 5, 3, 2, 1]
p bubble_sort(a)