input = gets.split.map(&:to_i)
wind_count = input[0]
x_y = input[1..2]

wind_info = []
wind_count.times do
  wind_info << gets.split.map(&:to_i)
end

x_max_ary = [x_y[0]]
wind_info.each do |wind_i|
  x_y[0] += wind_i[0]
  x_y[1] += wind_i[1]
  x_max_ary << x_y[0]
  if x_y[1] <= 0
    break
  end
end

p x_max_ary.max