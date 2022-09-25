def bubble_sort(array)
  (array.length - 1).times do
    number_of_changes = 0
    first_element = 0
    next_element = 1

    (array.length - 1).times do
      if array[first_element] > array[next_element]
        array[first_element], array[next_element] = array[next_element], array[first_element]
        number_of_changes += 1
      end

      first_element += 1
      next_element += 1
    end

    break if number_of_changes.zero?
  end

  array
end

p bubble_sort([4, 3, 78, 2, 0, 2, 5, 4, 1, 99, 456, 3231, 1231, 345, 69, 96, 667, 1337, 727, -5, -999])
