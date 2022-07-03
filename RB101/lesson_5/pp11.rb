arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# LS Solution:

arr.map do |element|
  element.select do |num|
    num % 3 == 0
  end
end
# => [[], [3], [9], [15]]