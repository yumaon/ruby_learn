count = gets.to_i

num_array = gets.split.map(&:to_i).sort

score_array = []
i = 0
c = 0
while i < count do
  if num_array[i] != num_array[i + 1] - 1 
    unless score_array.include? num_array[i]
        score_array << num_array[i]
    end
    i += 1
  elsif num_array[i] == num_array[i + 1] - 1
    while num_array[i + 2] != nil && num_array[i + 1] == num_array[i + 2] - 1 do
      i += 1
      c += 1
    end
    score_array << num_array[i + 1]
    if c > 0
      i += i
    else 
      i += 2
    end
  end
end

puts score_array.sum