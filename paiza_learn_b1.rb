input = gets.split(" ").map(&:to_i)

cards_num = input[0]
set_num = input[1]
shuffle_num = input[2]
array = [*1..cards_num]

shuffle_num.times do
  array = array.each_slice(set_num).to_a
  array = array.reverse.flatten
end

puts array