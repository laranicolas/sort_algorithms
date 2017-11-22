class Array
  def quicksort
    return [] if self.empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end

arr = [31, 4, 10, 1, 2, 99]
p arr.quicksort