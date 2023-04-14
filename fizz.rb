def fizz_buzz(num)
  if num % 15 == 0
    puts "FizzBuzz"
  elsif num % 5 == 0
    puts "Buzz"
  elsif num % 3 == 0
    puts "Fizz"
  else
    puts num
  end
end

puts "数字を入力してください"
num = gets.to_i

puts "結果は..."
fizz_buzz(num)