count = gets.to_i

names = []
count.times do
  name = gets.chomp
  names << name
end

names_output = names.sort {|a, b| a.delete("^0-9").to_i <=>b.delete("^0-9").to_i}

puts names_output
