n = gets.to_i
#回数
m = n * (n - 1) / 2
array = []
m.times do
    vs = gets.split.map(&:to_i)
    array << vs
end

# 人数分の配列
people = [*1..n]
i = 0
x = 0
wl_array = []
vs_array = []

# [[1, 3], [2, 1], [2, 3]]
while n > i do
  array.each do |a|
    if a.include? people[i]
      if a[0] == people[i]
        vs_array << ["W", a[1]]
      else
        vs_array << ["L", a[0]]
      end
    # else
    #   vs_array << ["-", people[i]]
    end
  end
  wl_array << vs_array.sort { |a, b| a[1] <=> b[1] }
  vs_array = []
  i += 1
end

p wl_array
z_array = []
wl_array.each do |wl|
  wl.each do |i|
      z_array << i[0]
  end
end

p z_array

z_array = z_array.each_slice(n - 1).to_a
p z_array
z_array.each_with_index do |z, l|
    puts z.insert(l, "-").join(" ")
end