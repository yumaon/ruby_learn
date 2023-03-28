count, border_point = gets.split.map(&:to_i)

i = 1
ok_array = []
count.times do 
  point, ng_count = gets.split.map(&:to_i)
  if (point - 5 * ng_count).abs >= border_point
    ok_array << i
    i += 1
  else
    i += 1
  end
end

puts ok_array