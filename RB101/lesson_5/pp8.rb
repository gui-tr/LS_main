hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


# My solution:

hsh.each_value do |value|
  value.each do |str|
    str.chars.each do |letter|
      puts letter if letter =~ /[aeiou]/
    end
  end
end


# LS Solution:

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
