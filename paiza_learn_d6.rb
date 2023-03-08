input = gets.split(" ")

month = input[0].to_i
day = input[1].to_i

if month.digits[0] == month.digits[1] || month.digits.size == 1
  if day.digits[0] == day.digits[1] || day.digits.size == 1
    if month.digits[0] == day.digits[0]
      puts "Yes"
    else
      puts "No"
    end
  else
    puts "No"
  end
else
  puts "No"
end