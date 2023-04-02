house, men, cry = gets.split.map(&:to_i)

men_hidden_array = []
men.times do
  men_hidden_array << gets.to_i
end
# men_hidden_array.sort

house_array = [*1..house]

cry_count = 0
sweets_count = 0
house_array.each do |h|
  unless men_hidden_array.include? h
    sweets_count += 1
    if cry_count >= 0
      cry_count = 0
    end
  else
    cry_count += 1
    if cry_count == cry
      break
    end
  end
end

puts sweets_countt

