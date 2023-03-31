count = gets.to_i

num_array = gets.split.map(&:to_i).sort

score_array = []
# 5 10 11 12 24 25
x = 0
(count).times do
  if num_array[x + 1] && num_array[x] != num_array[x + 1] - 1 || num_array[x] == num_array[-1]
    score_array << num_array[x]
    x += 1
  else
    x += 1
  end
end

puts score_array.sum





# count = gets.to_i

# num_array = gets.split.map(&:to_i).sort

# score_array = []
# # 5 10 11 12 24 25
# x = 0
# (count - 1).times do
#   if num_array[x] != num_array[x + 1] - 1 && num_array[x + 1] != nil
#     score_array << num_array[x]
#     x += 1
#   else
#     x += 1
#   end
# end

# puts score_array.join(" ")
# puts score_array.sum




# count = gets.to_i

# num_array = gets.split.map(&:to_i).sort

# score_array = []
# i = 0
# c = 0
# while i < count do
#   if num_array[i] != num_array[i + 1] - 1
#     unless score_array.include? num_array[i]
#         score_array << num_array[i]
#     end
#     i += 1
#   elsif num_array[i] == num_array[i + 1] - 1
#     while num_array[i + 2] != nil && num_array[i + 1] == num_array[i + 2] - 1 do
#       i += 1
#       c += 1
#     end
#     score_array << num_array[i + 1]
#     if c > 0
#       i += i
#     else
#       i += 2
#     end
#   end
# end

# puts score_array.sum






# count = gets.to_i

# num_array = gets.split.map(&:to_i).sort

# score_array = []
# i = 0
# x = 0
# while i < count - 1 do
#   if num_array[x] != num_array[x + 1] - 1 && num_array[x + 1] != nil
#     unless score_array.include? num_array[x]
#         score_array << num_array[x]
#     end
#     x += 1
#     i += 1
#   elsif num_array[x] == num_array[x + 1] - 1 && num_array[x + 1] != nil
#     while num_array[x] == num_array[x + 1] - 1 && num_array[x + 1] != nil do
#       x += 1
#       i += 1
#     end
#   elsif num_array[x + 1] == nil
#       score_array << num_array[x]
#       i += 1
#       x += 1
#   end
# end

# puts score_array.join(" ")
# puts score_array.sum