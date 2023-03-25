# xc, yc, r_1, r_2 = gets.split.map(&:to_i)

# count = gets.to_i

# count.times do
#   x, y = gets.split.map(&:to_i)
#   if r_1**2 <= (x - xc)**2 + (y - yc)**2 && (x - xc)**2 + (y - yc)**2 <= r_2**2
#     puts "yes"
#   else
#     puts "no"
#   end
# end

xc, yc, r_1, r_2 = gets.split.map(&:to_i)

count = gets.to_i

y_n_array = []
count.times do
  x, y = gets.split.map(&:to_i)
  if r_1**2 <= (x - xc)**2 + (y - yc)**2 && (x - xc)**2 + (y - yc)**2 <= r_2**2
    y_n_array << "yes"
  else
    y_n_array << "no"
  end
end

puts y_n_array