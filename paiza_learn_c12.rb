input = gets.split.map(&:to_i)

count = input[0] - 1
size = input[1]

cm_array = []
count.times do
  cm_array << gets.to_i
end

i = 0
side = 0
count.times do
  side += size - cm_array[i]
  i += 1
end

total_side = size + side

puts size * total_side
