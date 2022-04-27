def validate_image_size(image_urls, max_size)
  converted_max_size = 0
  returned_string = image_urls
    
  # convert max_size into bytes.
  if max_size.downcase[-2..-1].include?("gb")
    converted_max_size = max_size.chars[0..-3].join.to_i * 1000000000
  elsif max_size.downcase[-2..-1].include?("mb")
    converted_max_size = max_size.chars[0..-3].join.to_i * 1000000
  elsif max_size.downcase[-2..-1].include?("mb")
    converted_max_size = max_size.chars[0..-3].join.to_i * 1000
  end

  # iterate over the second index of each element of image_urls argument. 
  returned_string.each do |el|
    if el[1].to_i <= converted_max_size
      el[1] = "TRUE"
    else
      el[1] = "FALSE"
    end
  end
            
  p returned_string
end

# TEST CASE:

# validate_image_size([["random_url", "1000000"], ["random_url_no2", "123748484885885"]], "25MB")
# => [["random_url", "TRUE"], ["random_url_no2", "FALSE"]]
