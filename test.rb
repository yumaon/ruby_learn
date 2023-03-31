# num = [2,2,2,2,2,2]
# puts num.length

# puts num.uniq

# puts  num.uniq.length

# test1 = ["f","r","h","d","y"]
# test2 = ["r","d","y","h","a"]

# puts test1 - test2

array = [*1..9]
x = 1
9.times do
  puts array.map { |n| n * x }.join(" ")
  x += 1
end