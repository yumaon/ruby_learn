race_count, k_num = gets.split.map(&:to_i)
one_ary = []
race_count.times do
  one_ary << gets.to_i
end
two_ary = []
race_count.times do
  two_ary << gets.to_i
end
three_ary = []
race_count.times do
  three_ary << gets.to_i
end

one_ary_ave = []
two_ary_ave = []
three_ary_ave = []
i = 0
while i <= 0 do
  one_ary = one_ary.each_slice(k_num).to_a
  one_val = one_ary[0].sum
  one_ary_ave << one_val.to_f / k_num
  one_ary = one_ary.flatten
  one_ary.shift

  two_ary = two_ary.each_slice(k_num).to_a
  two_val = two_ary[0].sum
  two_ary_ave << two_val.to_f / k_num
  two_ary = two_ary.flatten
  two_ary.shift

  three_ary = three_ary.each_slice(k_num).to_a
  three_val = three_ary[0].sum
  three_ary_ave << three_val.to_f / k_num
  three_ary = three_ary.flatten
  three_ary.shift
  if three_ary.length < k_num
    i += 1
  end
end

total_min_val_ary = [[1, one_ary_ave.min],[2, two_ary_ave.min],[3, three_ary_ave.min]]
total_min_val_ary = total_min_val_ary.sort {|a, b| a[1] <=> b[1]}
puts total_min_val_ary[0][0]