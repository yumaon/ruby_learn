
input = gets.split(" ")

cars = input[0]
m = input[1]

def total_m(cars, m)
  i = cars.to_i - 1
  meter = 0
  i.times do
    distance = gets.to_i
    if distance <= m.to_i
      meter += distance
    end
  end
   return puts meter
end

total_m(cars, m)