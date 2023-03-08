number = gets.to_i
numbers = number.digits

if numbers.uniq.length != numbers.length
  puts "NG"
else
  puts "OK"
end