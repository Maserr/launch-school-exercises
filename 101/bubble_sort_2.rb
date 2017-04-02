# Note that we did not use the optimization suggested on the Wiki page that
# skips looking at tail elements that we know are already sorted. If your
# solution also skipped this optimization, trying modifying your solution so it
# uses that optimization.

def bubble_sort!(array)
  n = array.length

  until n == 0 do
    newn = 0
    1.upto(n-1) do |index|
      if array[index-1] > array[index]
        array[index-1], array[index] = array[index], array[index-1]
        newn = index
      end
    end
    n = newn
  end
end

array = [5, 3]
bubble_sort!(array)
p array # => [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array # => [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array # => %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
