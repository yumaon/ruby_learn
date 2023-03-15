input = gets.split.map(&:to_i)

count = input[0]
num_array = [*1..count]

n = 0
count.times do
  if num_array[n] % input[1] == 0 && num_array[n] % input[2] == 0
    puts "AB"
    n += 1
  elsif num_array[n] % input[1] == 0
    puts "A"
    n += 1
  elsif num_array[n] % input[2] == 0
    puts "B"
    n += 1
  else
    puts "N"
    n += 1
  end
end