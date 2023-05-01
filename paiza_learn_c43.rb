box_count, r = gets.split.map(&:to_i)
box_hash = {}
i = 1
box_count.times do
  box_hash[i] = gets.split.map(&:to_i)
  i += 1
end

t = r * 2

ary = []
box_hash.each do |k, v|
  j = 0
  v.each do |size|
    if size >= t
      j += 1
    end
  end
  if j == 3
    ary << k
  end
end

puts ary