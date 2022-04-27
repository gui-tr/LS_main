# Assignement: Write a method that selects from a hash the key-value pairs that have a value of 'Fruit'.

def select_fruit(hash)
  array_of_subarrays = hash.to_a
  new_selected_array = []
  counter = 0

  loop do 
§
    break if counter == array_of_subarrays.length
    
    current_kv_pair = array_of_subarrays[counter]
    
    if current_kv_pair[1] == "Fruit"
      new_selected_array << current_kv_pair
    end
    
    counter += 1
  end
  
  new_selected_array.to_h
end