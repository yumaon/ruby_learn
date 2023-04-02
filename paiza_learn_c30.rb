count = gets.to_i
people_array = [*1..count]

p_num = 0
ball_array = []
count.times do
  ball_array << [people_array[p_num], gets.to_i]
  p_num += 1
end

pass_count = gets.to_i

pass_info = []
pass_count.times do
  p_a, p_b, balls = gets.split.map(&:to_i)
  pass_info << [p_a, p_b, balls]
end

i = 0
while i < pass_count do
  if pass_info[i][2] <= ball_array[pass_info[i][0] - 1][1]
    ball_array[pass_info[i][0] - 1][1] -= pass_info[i][2]
    ball_array[pass_info[i][1] - 1][1] += pass_info[i][2]
    i += 1
  else
    ball_array[pass_info[i][1] - 1][1] += ball_array[pass_info[i][0] - 1][1]
    ball_array[pass_info[i][0] - 1][1] -= ball_array[pass_info[i][0] - 1][1]
    i += 1
  end
end

ball_array.each { |b| puts b[1] }