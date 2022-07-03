# My solution:

def uuid
  hexa = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "A", "B", "C", "D", "E", "F"]
  pass = ""
  
  8.times { pass << hexa.sample }

  pass << "-"
  
  until pass.size == 24 do 
    4.times { pass << hexa.sample }
    pass << "-"
  end
  
  12.times { pass << hexa.sample }
  
  pass
end


# LS solution:

def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end