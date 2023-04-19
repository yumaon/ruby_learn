carrot_data_count, standard_value, limit_error = gets.split.map(&:to_i)

j = 1
carrot_data_hash = {}
carrot_data_count.times do
  carrot_data_hash[j] = gets.split.map(&:to_i)
  j += 1
end

limit_border = standard_value - limit_error
limit_top = standard_value + limit_error

carrot_ary = []
carrot_data_hash.each do |k, v|
  if limit_border <= v[1] && v[1] <= limit_top
    carrot_ary << [k, v[0]]
  end
end

if carrot_ary.empty?
  puts "not found"
else
  p carrot_ary.sort { |a, b| b[1] <=> a[1] }[0][0]
end