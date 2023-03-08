input = gets.split(" ")

set = input[0]
no_set = input[1]

set_price = set.to_i * 6000
no_set_price = no_set.to_i * 4000

total_price = set_price + no_set_price

puts total_price