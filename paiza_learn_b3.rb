h, w = gets.split.map(&:to_i)

h_w_array = []
h.times do
  h_w_array << gets.split("").map(&:chomp).reject(&:empty?)
end

num = gets.split.map(&:to_i)
x = num[0] - 1
y = num[1] - 1

move_count = gets.to_i

command_array = []
move_count.times do
  command_array << gets.chomp
end

n = 0
move_count.times do
  if command_array[n] == "U"
    y -= 1
    while h_w_array[y][x] == "#" do
      if y == 0
        break
      end
      y -= 1
    end
    n += 1

  elsif command_array[n] == "R"
    x += 1
    while h_w_array[y][x] == "#" do
      if x == w - 1
        break
      end
      x += 1
    end
    n += 1

  elsif command_array[n] == "D"
    y += 1
    while h_w_array[y][x] == "#" do
      if y == h - 1
        break
      end
      y += 1
    end
    n += 1

  elsif command_array[n] == "L"
    x -= 1
    while h_w_array[y][x] == "#" do
      if x == 0
        break
      end
      x -= 1
    end
    n += 1

  end
end

puts [x + 1, y + 1].join(" ")

# h, w = gets.split.map(&:to_i)

# h_w_array = []
# h.times do
#   h_w_array << gets.split("").map(&:chomp).reject(&:empty?)
# end

# num = gets.split.map(&:to_i)
# x = num[0] - 1
# y = num[1] - 1

# move_count = gets.to_i

# command_array = []
# move_count.times do
#   command_array << gets.chomp
# end

# n = 0
# move_count.times do
#   if command_array[n] == "U"
#     y -= 1
#     if h_w_array[y][x] == "#"
#       while h_w_array[y][x] == "#" do
#         if y == 0
#           break
#         end
#         y -= 1
#       end
#     end
#     n += 1

#   elsif command_array[n] == "R"
#     x += 1
#     if h_w_array[y][x] == "#"
#       while h_w_array[y][x] == "#" do
#         if x == w - 1
#           break
#         end
#         x += 1
#       end
#     end
#     n += 1

#   elsif command_array[n] == "D"
#     y += 1
#     if h_w_array[y][x] == "#"
#       while h_w_array[y][x] == "#" do
#         if y == h - 1
#           break
#         end
#         y += 1
#       end
#     end
#     n += 1

#   elsif command_array[n] == "L"
#     x -= 1
#     if h_w_array[y][x] == "#"
#       while h_w_array[y][x] == "#" do
#         if x == 0
#           break
#         end
#         x -= 1
#       end
#     end
#     n += 1

#   end
# end

# puts [x + 1, y + 1].join(" ")


h, w = gets.split.map(&:to_i)

h_w_array = []
h.times do
  h_w_array << gets.split("").map(&:chomp).reject(&:empty?)
end

num = gets.split.map(&:to_i)
x = num[0]
y = num[1] 

move_count = gets.to_i

command_array = []
move_count.times do
  command_array << gets.chomp
end

n = 0
move_count.times do
  if command_array[n] == "U"
    y -= 1
    if y > 0 && h_w_array[y - 1][x - 1] == "#"
      y -= 1 while y > 1 && h_w_array[y - 2][x - 1] == "#"
    end
    n += 1 if y == 0 || h_w_array[y - 1][x - 1] == "."
  elsif command_array[n] == "R"
    x += 1
    if x <= w && h_w_array[y - 1][x - 1] == "#"
   　 x += 1 while x < w && h_w_array[y - 1][x] == "#"
    end
    n += 1 if x > w || h_w_array[y - 1][x - 1] == "."
  elsif command_array[n] == "D"
    y += 1
    if y <= h && h_w_array[y - 1][x - 1] == "#"
      y += 1 while y < h && h_w_array[y][x - 1] == "#"
    end
    n += 1 if y > h || h_w_array[y - 1][x - 1] == "."
  elsif command_array[n] == "L"
    x -= 1
    if x > 0 && h_w_array[y - 1][x - 1] == "#"
      x -= 1 while x > 1 && h_w_array[y - 1][x - 2] == "#"
    end
    n += 1 if x == 0 || h_w_array[y - 1][x - 1] == "."
  end
end

puts [x , y].join(" ")