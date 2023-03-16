stores_and_month = gets.split(" ").map(&:to_i)
stores = stores_and_month[0]
month = stores_and_month[1]

prices = gets.split(" ").map(&:to_i)
building_cost = prices[0]
labor_cost = prices[1]
ramen_price = prices[2]

passing_stores = 0

ramen_count = []
stores.times do
  ramen_count << gets.to_i
end

i = 0
stores.times do
  grace = (ramen_price * ramen_count[i] - building_cost) - (labor_cost * month)
  if grace < 0
    passing_stores += 1
    i += 1
  else
    i += 1
  end
end

puts passing_stores