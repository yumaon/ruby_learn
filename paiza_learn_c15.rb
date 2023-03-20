count = gets.to_i

array = []
count.times do
  array << gets.split(" ").map(&:to_i)
end

n = 0
point = 0
count.times do
  if array[n][0].digits.include?(3)
    point += (array[n][1] * 0.03).floor
  elsif array[n][0].digits.include?(5)
    point += (array[n][1] * 0.05).floor
  else
    point += (array[n][1] * 0.01).floor
  end
  n += 1
end

puts point