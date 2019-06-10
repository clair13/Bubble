def bubble_sort(array)
  swap = true
    while swap
      swap = false
      (array.length - 1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swap = true
        end
      end
    end
  array
end

p bubble_sort([4,3,78,2,0,2])