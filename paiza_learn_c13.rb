# count = gets.to_i

# ip_array = []
# count.times do
#   ip_array << gets.split(".").map(&:to_i)
# end

# i = 0
# n = 0

# while i <= count do
#   while n <= ip_array[i].length do
#     if ip_array[i][n] <= 255
#       n += 1
#     else
#       puts "False"
#       n *= 0
#       i += 1
#     end
#     if n == ip_array[i].length
#       puts "True"
#       n *= 0
#       i += 0
#     end
#   end
# end


# puts ip_array[1]

# count = gets.to_i

# ip_array = []
# count.times do
#   ip_array << gets.split(".").map(&:to_i)
# end

# i = 0
# n = 0

# while i <= count do
#   while n <= ip_array[i].length do
#     if ip_array[i][n] <= 255
#       n += 1
#       if n == ip_array[i].length
#         puts "True"
#         n *= 0
#         i += 1
#       end
#     else
#       puts "False"
#       n *= 0
#       i += 1
#     end
#   end
# end

# count = gets.to_i

# ip_array = []
# count.times do
#   ip_array << gets.split(".").map(&:to_i)
# end

# i = 0
# n = 0

# while i <= count do
#   count.times do
#     if ip_array[i][n] <= 255
#       n += 1
#       if n == ip_array[i].length
#         puts "True"
#         n *= 0
#         i += 1
#       end
#     else
#       puts "False"
#       n *= 0
#       i += 1
#     end
#   end
# end

count = gets.to_i

ip_array = []
count.times do
  ip_array << gets.split(".").map(&:to_i)
end

i = 0
n = 0

while i < count do
  if ip_array[i][n] <= 255
    n += 1
    if n == ip_array[i].length
      puts "True"
      n = 0
      i += 1
    end
  else
    puts "False"
    n = 0
    i += 1
  end
end