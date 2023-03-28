a, b, r = gets.split.map(&:to_i)

n = gets.to_i

n_array = []
n.times do 
  n_array << gets.split.map(&:to_i)
end

i = 0

n.times do
  if (n_array[i][0] - a)**2 + (n_array[i][1] - b)**2 >= r**2
    puts "silent"
    i += 1
  else
    puts "noisy"
    i += 1
  end
end