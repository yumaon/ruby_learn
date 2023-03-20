# "hogeはrubyです".gsub(/hoge|ruby/, "hoge" => "私", "ruby" => "男")

# input = gets.chomp

# puts input.gsub(/A|E|G|I|O|S|Z/,"A" => "4","E" => "3","G" => "6","I" => "1","O" => "0","S" => "5","Z" => "2")

# input = gets.to_i

# array = []
# input.times do
#     array << gets.to_i
# end

# p array

m, n = gets.split.map(&:to_i)

puts m * n