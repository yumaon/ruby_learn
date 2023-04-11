cooking, people_count = gets.split.map(&:to_i)
cal_ary = []
cooking.times do
  cal_ary << gets.to_i
end

people_ary = [*1..people_count]

people_eat_cal_h = {}
people_total_cal_h = {}
n = 0
people_count.times do
  people_eat_cal_h[people_ary[n]] = gets.split.map(&:to_i)
  people_total_cal_h[people_ary[n]] = 0
  n += 1
end

total_cal = 0
people_eat_cal_h.each do |people, cal|
  i = 0
  x = 0
  total_cal = 0
  while x < cooking do
    total_cal = (cal_ary[i] / 100.to_f) * cal[x]
    people_total_cal_h[people] += total_cal.floor
    x += 1
    i += 1
  end
end

people_total_cal_h.each { |people, cal| puts cal }