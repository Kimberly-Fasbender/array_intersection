# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n+m) - linear, where ne is the length of the smaller array, and m
#                           is the length of the longer array
# Space complexity: O(n) if n < m - linear, where n is the number of elements in the smallest array
def intersection(array1, array2)
  if !array1 || !array2 || array1.length == 0 || array2.length == 0
    return []
  end

  if array1.length > array2.length
    larger_array = array1
    smaller_array = array2
  else
    larger_array = array2
    smaller_array = array1
  end

  hash = Hash.new()

  smaller_array.each do |num|
    hash[num] = 1
  end

  intersection = []
  larger_array.each do |num|
    if hash.include? num
      intersection << num
    end
  end

  return intersection
end
