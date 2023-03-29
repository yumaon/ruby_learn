price, par = gets.split.map(&:to_i)

count = price
while price != 0 do
    price = price - (price * (par / 100.to_f))
    price = price.floor
    count += price
end

puts count