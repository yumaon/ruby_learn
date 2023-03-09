count = gets.to_i

count.times do
  number = gets.to_i
  if number.digits.uniq.length == 1
    puts "Four Card"
  elsif number.digits.uniq.length == 2
    if number.digits[0] == number.digits[1] && number.digits[2] == number.digits[3]
      puts "Two Pair"
    else
      puts "Three Card"
    end
  elsif number.digits.uniq.length == 3
    puts "One Pair"
  else
    puts "No Pair"
  end
end