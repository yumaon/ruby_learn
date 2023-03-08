needed_count = gets.to_i
buys_count = gets.to_i

possible_count = buys_count / needed_count
over_count = buys_count % needed_count

puts possible_count
puts over_count