def merge_sort(list, i)
  # [8, 7, 6, 5, 4, 3, 2, 1]
  # [8, 7, 6, 5]
  # [4, 3, 2, 1]
  # [4, 3]
  # [2, 1]
  # [2]
  # [1]
  # [8, 7]
  # [8]
  # [7]
  # [6, 5]
  # [6]
  # [6]
  return list if list.size <= 1
  i+=1
  mid = (list.size / 2).floor
  left = merge_sort(list[0...mid], i)
  right = merge_sort(list[mid..list.size], i)
  merge(left, right)
end

def merge(left, right)
  puts "merging: #{left.inspect}, #{right.inspect}"
  return left if right.empty?
  return right if left.empty?
  if left.first < right.first
    [left.first] + merge(left[1..left.size], right)
  else
    [right.first] + merge(left, right[1..right.size])
  end
end

arr = [8, 7, 6, 5, 4, 3, 2, 1]
p merge_sort(arr, 0)