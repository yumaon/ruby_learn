num = gets.to_i

word_array = []
num.times do
  word_array << gets.chomp
end

n = 0
count = num - 1
not_valid = []
count.times do
  if word_array[n].chars[-1] == word_array[n + 1].chars[0]
    n += 1
  else
    not_valid << word_array[n].chars[-1]
    not_valid << word_array[n + 1].chars[0]
    return puts not_valid.join(" ")
  end
end

if n == count
  puts "Yes"
end

# puts word_array[0].chars[-1]
# puts count