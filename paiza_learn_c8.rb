# pass = gets.chomp.split("")
# input = gets.chomp.split("")

# if pass != input && input.length == 3
#     if pass.include? input[0]
#         if pass.include? input[1]
#             if pass.include? input[2]
#                 puts "YES"
#             end
#         end
#     end
# else
#     puts "NO"
# end

# pass = gets.chomp.split("")
# input = gets.chomp.split("")

# i = pass.length
# n = 0
# if pass != input && input.length == pass.length
#   i.times do
#     if pass.include? input[n] then n += 1
#         puts "YES"
#     end
#   end
# else
#   puts "NO"
# end

# pass = gets.chomp.split("")
# input = gets.chomp.split("")

# i = pass.length
# n = 0
# if pass != input && input.length == pass.length
#     i.times do
#         if pass.include? input[n]
#           n += 1
#         else
#           n -= 1
#         end
#     end
#     if n == i
#       puts "YES"
#     else
#       puts "NO"
#     end
# else
#     puts "NO"
# end





# pass = gets.chomp.split("")
# input = gets.chomp.split("")

# pass_count = 0
# if pass != input
#     input.each do |i|
#         if pass.include?(i)
#             pass_count += 1
#         end
#     end
#     if pass_count == passlength
#         puts "YES"
#     else
#         puts "NO"
#     end
# else
#     puts "NO"
# end




pass = gets.chomp.split("")
input = gets.chomp.split("")

pass_count = 0
if pass != input
  input.uniq.each do |i|
    if pass.uniq.include?(i)
      pass_count += 1
    end
  end
  if pass_count == pass.uniq.length
    if pass.sort { |a, b| a <=> b } == input.sort { |a, b| a <=> b }
      puts "YES"
    else
      puts "NO"
    end
  else
    puts "NO"
  end
else
  puts "NO"
end