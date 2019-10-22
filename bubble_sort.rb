def bubble_sort(arr)
    is_sorted = false
    counter = 1
    while !is_sorted
        is_sorted = true
        arr.each_with_index { |n, i|
            if i + counter < arr.length && n > arr[i + 1]
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                is_sorted = false
            end
        }  
        counter += 1
    end
    arr
end

puts bubble_sort([3,-1,9,2])