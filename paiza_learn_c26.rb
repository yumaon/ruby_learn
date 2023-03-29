k, n = gets.split.map(&:to_i)

q1_p = 100 / n

rank_array = []
k.times do
  d, a = gets.split.map(&:to_i)
  point = a * q1_p
  if d <= 0
    point = point
  elsif d > 0 && d <= 9
    point = point * 0.8
  elsif d > 9
    point = 0
  end
    
  if point >= 0 && point < 60
    rank_array << "D"
  elsif point >= 60 && point < 70
    rank_array << "C"
  elsif point >= 70 && point < 80
    rank_array << "B"
  elsif point >= 80 && point <= 100
    rank_array << "A"
  else
    rank_array << "D"
  end
end

puts rank_array