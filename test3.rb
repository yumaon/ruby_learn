# pass = gets.chomp.split("")
# input = gets.chomp.split("")


# i = pass.length
# n = 0
# if pass != input && input.length == pass.length
#   if pass.uniq.length == input.uniq.length
#     count = pass.uniq.length
#     count.times do
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
#   else
#     puts "NO"
#   end
# else
#   puts "NO"
# end

pass = gets.chomp.split("")
input = gets.chomp.split("")


i = pass.uniq.length
n = 0
if pass != input && input.length == pass.length
  if pass.uniq.length == input.uniq.length
    count = pass.uniq.length
    count.times do
      if input.uniq.include? pass[n]
        n += 1
      else
        n -= 1
      end
    end
  end
  if n == i
    puts "YES"
  else
    puts "NO"
  end
else
  puts "NO"
end