people_count = gets.to_i
people_num_ary = [*1..people_count]

n = 0
people_age_hash = {}
people_beans_hash = {}
people_count.times do
  people_age_hash[people_num_ary[n]] = gets.to_i
  people_beans_hash[people_num_ary[n]] = 0
  n += 1
end

order_count = gets.to_i
order_ary = []
order_count.times do
  order_ary << gets.split.map(&:to_i)
end

order_ary.each do |order|
  p_w = [*order[0]..order[1]]
  p_w.each do |i|
    people_beans_hash[i] += order[2]
    if people_beans_hash[i] > people_age_hash[i]
      people_beans_hash[i] = people_age_hash[i]
    end
  end
end

people_beans_hash.each { |a| puts a[1] }