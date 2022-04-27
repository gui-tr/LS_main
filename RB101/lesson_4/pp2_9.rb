def titleize(sentence)
  array = sentence.split

  array.map! do |word|
    word.capitalize
  end

  array.join(" ")
end