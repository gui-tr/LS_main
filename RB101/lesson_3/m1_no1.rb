# my solution:

count = 0
indent = ""

until count == 10
  puts indent + "The Flintstones Rock!" 
  indent << " "
  count += 1
end


# LS solution:

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
