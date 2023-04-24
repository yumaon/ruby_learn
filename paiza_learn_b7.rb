car_count = gets.to_i

car_hash = {}
car_ary = []
car_count.times do
  car_num = gets.to_i
  car_ary << car_num
  car_hash[car_num] = 0
end

car_ary_sort = car_ary.sort

while car_count != 0 do
  if car_ary[0] != car_ary_sort[0]
    car_hash[car_ary[0]] += 1
    car_top = car_ary.delete(car_ary[0])
    car_ary = car_ary.insert(-1, car_top)
  else
    car_ary_sort.shift
    car_ary.delete(car_ary[0])
    car_count -= 1
  end
end

keys = car_hash.keys.sort.last
puts car_hash[keys]