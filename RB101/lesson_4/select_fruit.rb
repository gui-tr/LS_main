# My solution: (works perfectly fine and not longer than LS solution. Also, it does not mutate the original array, which is what we wanted here)

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


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}


#LS solution (MORE CONSICE)

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    # this has to be at the top in case produce_list is empty hash
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      selected_fruits[current_key] = current_value
    end

    counter += 1
  end

  selected_fruits
end