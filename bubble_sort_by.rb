def bubble_sort_by(arr)
    is_sorted = false
    counter = 1
    while !is_sorted
        is_sorted = true
        arr.each_with_index { |n, i|
            if i + counter < arr.length
                result = yield(n, arr[i+1])
                if result > 0
                    arr[i], arr[i+1] = arr[i+1], arr[i]
                    is_sorted = false
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