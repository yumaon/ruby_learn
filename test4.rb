input = gets.split(" ").map(&:chomp)

n_1 = input[0]
n_2 = input[2]
n_3 = input[4]

f = input[1]

if n_1 == "x" && f == "+"
  x = n_3.to_i - n_2.to_i
elsif n_1 == "x" && f == "-"
  x = n_3.to_i + n_2.to_i
elsif n_2 == "x" && f == "+"
  x = n_3.to_i - n_1.to_i
elsif n_2 == "x" && f == "-"
  x = n_1.to_i - n_3.to_i
elsif n_3 == "x" && f == "+"
  x = n_1.to_i + n_2.to_i
elsif n_3 == "x" && f == "-"
  x = n_1.to_i - n_2.to_i
end

puts x