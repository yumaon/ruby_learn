move_price, hotel_price, intern_count = gets.split.map(&:to_i)

schedules = []
intern_count.times do
  schedules << gets.split.map(&:to_i)
end

point = [*1..intern_count - 1]

n = 1
point_hotel_price = []
point.length.times do
  point_hotel_price << (schedules[n][0] - schedules[n - 1][1]) * hotel_price
  n += 1
end

one_move_cost = move_price * 2

i = 0
lowest_price_array = []
point_hotel_price.length.times do
  if point_hotel_price[i] < one_move_cost
    lowest_price_array << point_hotel_price[i]
    i += 1
  else
    lowest_price_array << one_move_cost
    i += 1
  end
end

puts lowest_price_array.sum + one_move_cost

# ちょい修正してみたやつ↓

# move_price, hotel_price, intern_count = gets.split.map(&:to_i)

# schedules = []
# intern_count.times do
#   schedules << gets.split.map(&:to_i)
# end

# point = [*1..intern_count - 1].length

# n = 1
# point_hotel_price = []
# point.times do
#   point_hotel_price << (schedules[n][0] - schedules[n - 1][1]) * hotel_price
#   n += 1
# end

# one_move_cost = move_price * 2

# i = 0
# lowest_price = 0
# point.times do
#   if point_hotel_price[i] < one_move_cost
#     lowest_price += point_hotel_price[i]
#     i += 1
#   else
#     lowest_price += one_move_cost
#     i += 1
#   end
# end

# puts lowest_price + one_move_cost