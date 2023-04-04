a_t, count = gets.split.map(&:to_i)
active_time = [*1..a_t]

mission_array = []
key_time = []
count.times do
  time, mission = gets.split.map(&:chomp)
  key_time << time.to_i
  mission_array << mission
end

n = 0
puts_array = []
active_time.each do |active|
  while n < count do
    if active % key_time[n] == 0
      puts_array << mission_array[n]
      n += 1
    else
      n += 1
    end
  end
  if puts_array.any?
    puts puts_array.join(" ")
  else
    puts active
  end
  n = 0
  puts_array = []
end





# a_t, count = gets.split.map(&:to_i)
# active_time = [*1..a_t]

# mission_array = []
# key_time = []
# count.times do
#   time, mission = gets.split.map(&:chomp)
#   key_time << time.to_i
#   mission_array << mission
# end

# n = 0
# puts_array = []
# active_time.each do |active|
#   while n < count do
#     if active % key_time[n] == 0
#       if puts_array.any?(active)
#           puts_array = []
#       end
#       puts_array << mission_array[n]
#       n += 1
#     else
#       unless puts_array.any?
#         puts_array << active
#       end
#       n += 1
#     end
#   end
#   puts puts_array.join(" ")
#   n = 0
#   puts_array = []
# end