[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# LS Solution:

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end
# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

=begin
Here map is iterating through the array. On each iteration it is creating a new hash (incremented_hash) and then iterating through the hsh object for that iteration in order to add key-value pairs to this hash using the original keys but values incremented by 1. The outer block then returns this incremented_hash to map which uses it to transform each element in the array.
=end
