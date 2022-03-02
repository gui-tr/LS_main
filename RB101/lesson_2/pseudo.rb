=begin

1)

<CASUAL>
define method name, with 2 arguments
  print sum of arg1 and arg2
end


2) 

<CASUAL>
Define the method with one argument (an array of strings)
Iterate over the argument (array) and print a new string containing each string of the array.

<FORMAL>
START

DEFINE method, with 1 argument
  ITERATE over argument of strings
    PRINT new string with all strings concatenated
END
END


3)

<CASUAL>
Define the method with one argument.
Given an array of integers:
 - print the first integer of the array.
 - iterate over the array and print all the elements which indexes are even.


<FORMAL>
START
DEF method(argument)

  - PRINT argument[0]
  - ITERATE over argument: PRINT argument[even indexex]
END
END


4) (HARD)

<CASUAL>
- Define method with two arguments 
- Iterate over argument2
    - convert string into an array of strings of each letter
    - compare each element of the array with argument 1
      - if element == argument 1
          no_of_times + 1
        else
          next
        end
    - when no_of_times == 3
        print index of argument2[element]


<FORMAL>
START
Define method(arg1, arg2) #arg1 = character, arg2 = string
  SET no_of_times = 0

  arg2.each_with_index { |v, i|
    IF v == arg1
      no_of_times += 1
    ELSE
      next
    ELSIF count == 3
      puts i
    END }

  END
  END

  5)

  <CASUAL>

  - define the method with 2 arguments
  - create a new empty array that will become the output
  - populate the empty array with elements from argument 1 
        index of every element is multiply by 2 in the new array 
  - populate the empty array with elements from argument 1 
      index of every element stays the same in the new array
  - print the new array


  <FORMAL>

  - DEF method(arg1, arg2)
        new_array = []

        new_array << arg1[index * 2]
        
        new_array << arg2

    END

    









=end

