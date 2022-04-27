def pal(str)
  sub_pal = []
  start_index = 0
  end_index = -1
  
  loop do
    if str[start_index..end_index].reverse == str[start_index..end_index]
      sub_pal << str[start_index..end_index]
      start_index += 1
      end_index -= 1
    else
      start_index += 1
      end_index -= 1
    end
    break if str[start_index..end_index] == ""
  end

  sub_pal
end