cho_h, cho_w = gets.split.map(&:to_i)

choco_array = []
cho_h.times do
  choco_array << gets.split.map(&:to_i)
end

a_b_array = []
choco_array.each do |choco|
  if choco.sum % 2 == 0
    n = 0
    while n < (cho_w - 1) do
      if choco[0..n].sum == choco[(n + 1)..(cho_w - 1)].sum
        a_b_array << "A" * (n + 1) + "B" * (cho_w - n - 1)
        break
      else
        n += 1
      end
    end
    if n == cho_w - 1
      a_b_array = 0
    end
  else
    puts "No"
  end
end

if a_b_array == 0
    puts "No"
elsif a_b_array != 0 && a_b_array.length == cho_h
    puts "Yes"
    puts a_b_array
end