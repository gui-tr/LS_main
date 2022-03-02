def meth(arg1, arg2)
  count = 0
  arg2.chars.each do |v|
    if v == arg1
      count += 1
    end
    if count == 3
      puts arg2.index(v)
    end
  end
end

meth('x', 'axbxcdxex')