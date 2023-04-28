count = gets.to_i
fibo = [0, 1]
i = 0
while i <= count - 2 do
  num = fibo[i] + fibo[i + 1]
  fibo << num
  i += 1
end

p fibo.length
p fibo

p fibo[count]






# fibo = [0 , 1]
# i = 0
# num = 0
# while num.to_s.length < 2 do
#     num = fibo[i] + fibo[i + 1]
#     fibo << num
#     i += 1
# end


# p fibo

# p fibo.length

# p fibo[-1]