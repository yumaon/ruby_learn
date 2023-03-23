count = gets.to_i

num_array = gets.split.map(&:chomp)

if num_array.include?("x10")
  num_array.delete("x10")
  num_array = num_array.map(&:to_i)
  if num_array.include?(0)
    max_value = num_array.max
    total = (num_array.sum - max_value) * 10
    puts total
  else
    total = num_array.sum * 10
    puts total
  end
else
  num_array = num_array.map(&:to_i)
  if num_array.include?(0)
    max_value = num_array.max
    total = num_array.sum - max_value
    puts total
  else
    total = num_array.sum
    puts total
  end
end