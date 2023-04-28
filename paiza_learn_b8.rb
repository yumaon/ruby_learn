rosen_count, station_count = gets.split.map(&:to_i)

i = 1
rosen_hash = {}
rosen_count.times do
  rosen_hash[i] = gets.split.map(&:to_i)
  i += 1
end

keiyu_count = gets.to_i
rosen_to_station = []
keiyu_count.times do
  rosen_to_station << gets.split.map(&:to_i)
end

total_price = 0
my_rosen = 1
my_station = 0
keiyu_count.times do
  next_rosen = rosen_to_station[0][0]
  next_station = rosen_to_station[0][1] - 1
  if next_rosen == my_rosen
    if my_station == 0
      total_price += rosen_hash[next_rosen][next_station]
      my_station = next_station
      rosen_to_station.shift
    else
      total_price += rosen_hash[next_rosen][]
    end
  end
end