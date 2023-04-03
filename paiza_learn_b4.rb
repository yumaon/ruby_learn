h, w = gets.split.map(&:to_i)

field_array = []
h.times do
  field_array << gets.chomp.split("")
end

bomb_count = 0
field_array.each do |f|
  f.each { |bom| bomb_count += 1 if bom == "#"}
end

# puts bomb_count

# field_array.each {|b| puts b.join(" ")}


i = 0
n = 0
c = 0
bom_area_count = 0
while i < h do
  if field_array[i][n] == "#"
    field_array.each do |field|
      if field[n] == "."
        field[n] = "x"
        bom_area_count += 1
      end
    end
    while c < w do
      if field_array[i][c] == "."
        field_array[i][c] = "x"
        bom_area_count += 1
      end
      c += 1
    end
    c = 0
  end
  n += 1
  if n == w
    i += 1
    n = 0
  end
end

puts bom_area_count + bomb_count

# field_array.each {|b| puts b.join(" ")}