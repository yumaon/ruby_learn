paiza_world = [[1, 13], [2, 15], [3, 13], [4, 15], [5, 13], [6, 15], [7, 13], [8, 15], [9, 13], [10, 15], [11, 13], [12, 15], [13, 13]]

one_year_days = 0
paiza_world.each do |i|
  one_year_days += i[1]
end

y, m, d = gets.split.map(&:to_i)
a, b = gets.split.map(&:to_i)

year_count = 0
while (y + 1) % 4 != 1 do
  y += 1
  year_count += 1
end

n = m
n_day = 0
while n != 13 do
  n_day += paiza_world[n][1]
  n += 1
end
n_day += paiza_world[m - 1][1] - d

i = 0
if a != 1
  while i != a do
    n_day += paiza_world[i][1]
    i += 1
  end
else
  n_day += b
end

puts one_year_days * year_count + n_day

puts "今日の日付は#{y_i - year_count}年 #{m}月 #{d}日です"
puts "次のパイーザ際の開催日は#{a}月 #{b}日です"
puts "4で割って余り1になる年まではあと#{year_count}年あるので"
puts"一年は約#{one_year_days}日"
puts "#{one_year_days} x #{year_count} つまり#{one_year_days * year_count}"
puts "今日から、開催日までの年を無視した日数は#{nokori_day}"
puts "#{one_year_days * year_count} + #{nokori_day}をすると"
puts "次の祭りまであと#{one_year_days * year_count + nokori_day}日です"