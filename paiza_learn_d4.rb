input = gets.split(" ")

name = input[0]
gender = input[1]

if gender == "M"
  puts "Hi, Mr. #{name}"
elsif gender == "F"
  puts "Hi, Ms. #{name}"
end