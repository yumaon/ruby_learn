member = gets.to_i

total_ary = []
member.times do
  schedule_ary = gets.split.map(&:to_i)
  ary = [*schedule_ary[0]..schedule_ary[1]]
  total_ary << ary
end

i = 1
num = total_ary.length
result = "NG"
result_ary = []
need_day = total_ary.sort {|a, b| a.length <=> b.length }[0]
total_ary.sort {|a, b| a.length <=> b.length }[1..-1].each do |day|
  day.each do |d|
    if need_day.include? d
      result = "OK"
      result_ary << result
    else
      result = "NG"
      result_ary << result
    end
  end
  if result_ary.include?("OK")
    i += 1
  end
  result_ary = []
end

if i == num
  puts "OK"
else
  puts "NG"
end

#ver 2

member = gets.to_i

total_ary = []
member.times do
  schedule_ary = gets.split.map(&:to_i)
  ary = [*schedule_ary[0]..schedule_ary[1]]
  total_ary << ary
end

i = 0
result = "NG"
need_day = total_ary.sort {|a, b| a.length <=> b.length }[0]
total_ary.delete(need_day)
num = total_ary.length
total_ary.each do |day|
  result_ary = []
  day.each do |d|
    if need_day.include? d
      result = "OK"
      result_ary << result
    else
      result = "NG"
      result_ary << result
    end
  end
  if result_ary.include?("OK")
    i += 1
  end
end

if i == num
  puts "OK"
else
  puts "NG"
end