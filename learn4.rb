# 複数の条件を組み合わせる - OR

number1 = 1
number2 = 2
if number1 == 1 || number2 == 1
  puts "スキ！"
else
  puts "キライ"
end

number3 = rand(1..80)
puts number3
if number3 <= 30 || number3 >= 60
  puts "当たり"
else
  puts "残念！"
end

# 演習問題「距離に合わせてメッセージを表示する」
distance = rand(1..30)
puts "あなたの距離は#{distance}メートルです"

if distance <= 9 || distance >= 21
  puts "セーフ！"
end