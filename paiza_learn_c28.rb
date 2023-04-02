af_6 = gets.split.map(&:to_i)

buy_count = gets.to_i

my_nums = []
buy_count.times do
  my_nums << gets.split.map(&:to_i)
end

result = 0
result_array = []
my_nums.each do |nums|
  nums.each do |i|
    if af_6.include? i
      result += 1
    end
  end
  result_array << result
  result = 0
end

puts result_array