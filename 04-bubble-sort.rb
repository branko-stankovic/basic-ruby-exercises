def bubble_sort(array)
  (array.length-1).times do
    swapped = false
    (array.length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

p bubble_sort([1,6,3,7,4,2,5])
p bubble_sort([2,8,2,6,42,0,-6])
p bubble_sort([4,3,78,2,0,2])