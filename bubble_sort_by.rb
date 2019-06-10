def bubble_sort_by(array)
  swap = true
    while swap 
      swap = false
      (array.length - 1).times do |i| 
        if yield(array[i], array[i + 1]) > 0 
          array[i], array[i + 1] = array[i + 1], array[i]
          swap = true
        end
      end
    end
    p array
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
end