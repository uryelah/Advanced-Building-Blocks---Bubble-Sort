def bubble_sort_by(arr)
  is_unsorted = true
  counter = 1
  while is_unsorted
    is_unsorted = false
    arr.each_with_index { |n, i|
      if i + counter < arr.length
        result = yield(n, arr[i+1])
        if result > 0
          arr[i], arr[i+1] = arr[i+1], arr[i]
          is_unsorted = true
        end                
      end
    }  
    counter += 1
  end
  puts arr
end

bubble_sort_by(["hi", "ho","hello","hey"]) do |left,right|
left.length - right.length
end