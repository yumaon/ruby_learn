data_count, r = gets.split.map(&:to_i)
data_ary = []
data_count.times do
  data_ary << gets.to_i
end

max_d = data_ary.max

point_count = max_d / r

i = 1
graf_hash = {}
data_ary.each do |data|
  point = data / r
  ary = []
  point_count.times do
    ary << "."
  end
  point.times do
    ary.shift
    ary << "*"
  end
  ary = ary.reverse
  graf_hash[i] = ary
  i += 1
end

graf_hash.each {|k, v| puts "#{k}:#{v.join("")}"}