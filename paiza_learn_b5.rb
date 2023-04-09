input = gets.split.map(&:to_i)
sold_seat = input[0]
h = input[1]
w = input[2]
p_q = input[3..4]

sold_ary = []
sold_seat.times do
  sold_ary << gets.split.map(&:to_i)
end

c = 0
total_seat_ary = []
while c < h do
  i = 0
  while i < w do
    total_seat_ary << [c, i]
    i += 1
  end
  c += 1
end

sold_ary.each do |sold_s|
  if total_seat_ary.include?(sold_s)
    total_seat_ary.delete(sold_s)
  end
end

m_km_hash = {}
total_seat_ary.each do |seat|
  m_km = (p_q[0] - seat[0]).abs + (p_q[1] - seat[1]).abs
  if m_km_hash[m_km]
      m_km_hash[m_km] << seat
  else
      m_km_hash[m_km] = seat
  end
end
sort_m_km_hash = m_km_hash.sort.to_h
m_key = sort_m_km_hash.first[0]
m_km_hash[m_key].flatten.each_slice(2).to_a.each { |seat| puts seat.join(" ") }