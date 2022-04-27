def select_letter(sentence, letter)
  new_str = ""
  
  for char in sentence.chars
    new_str << char if char == letter
  end
  
  new_str
end