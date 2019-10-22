# frozen_string_literal: true

def bubble_sort(arr)
  is_unsorted = true
  counter = 1
  while is_unsorted
    is_unsorted = false
    arr.each_with_index do |n, i|
      if i + counter < arr.length && n > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        is_unsorted = true
      end
    end
    counter += 1
  end
  arr
end

puts bubble_sort([3, -1, 9, 2])
