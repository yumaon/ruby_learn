input = gets.chomp.split("-")
ary = []
input.each do |a|
  num = a.chars.map(&:to_i)
  ary << num
end
ary = ary.flatten
num_ary = [12, 3, 4, 5, 6, 7, 8 ,9 ,10 ,11]

total = 0
ary.each do |a|
  n = num_ary[a] * 2
  total += n
end

puts total