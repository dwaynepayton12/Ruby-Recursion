def merge_sort(array)
    return array if array.length < 2

    middle = array.length / 2
    left_half = merge_sort(array[0...middle])
    right_half = merge_sort(array[0...middle])

    sorted = []
    until left_half.empty? || right_half.empty?
        left_half.first <= right_half.first ? sorted << left_half.shift : sorted << right_half.shift
    end
    sorted + left_half + right_half
end

p merge_sort([3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6])