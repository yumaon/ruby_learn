input = readlines.map(&:chomp)

count = input[0].to_i
sushi_array = input[1..count]
i = 0
n = 0
sushi_array.each do |sushi|
  if sushi == "melon" 
      if i == 0 || i == 11
          n += 1
          i = 1
      else
          i += 1
      end
  else
      if i == 0 || i == 11
          i = 0
      else
          i += 1
      end
  end
end

puts n

# または当初の間違えたコードの修正してみるとこんな感じ

# input = readlines.map(&:chomp)

# count = input[0].to_i
# sushi_array = input[1..count]

# i = 0
# n = 0
# sushi_array.each do |sushi|
#   if sushi == "melon" && (i == 0 || i == 11)
#     n += 1
#     i = 1
#   elsif sushi == "melon" && i >= 1
#     i += 1
#   elsif sushi != "melon"
#     if i == 11
#       i = 0
#     elsif i > 0
#       i += 1
#     end
#   end
# end

# puts n