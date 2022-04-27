statement = "The Flintstones Rock"

hash = {}
collection = statement.delete(" ").split("")

collection.each do |char|
  hash[char] = statement.count(char)
end