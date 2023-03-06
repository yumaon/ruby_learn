# 複数の条件を組み合わせる - AND

number1 = 1
number2 = 2
if number1 == 1 && number2 == 1
  puts "好き"
else
  puts "嫌い"
end

number3 = rand(1..100)
puts number3
if number3 >= 30 && number3 <= 60
  puts "あたり"
else
  puts "残念"
end

# 演習問題「順位に合わせてメッセージを表示する」

number = rand(1..10)
puts "あなたの順位は#{number}位です"

if number >= 2 && number <= 5
  puts "あと少し！"
end