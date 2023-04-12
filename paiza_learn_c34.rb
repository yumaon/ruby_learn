n, a, b = gets.split.map(&:to_i)

n_schedules = gets.chomp.split("")
a_schedules = gets.chomp.split("")
b_schedules = gets.chomp.split("")

n_schedules.each do |n|
  a_schedules.shift(1) if n == a_schedules[0]
  b_schedules.shift(1) if n == b_schedules[0]
end

puts [a_schedules.length, b_schedules.length].join(" ")