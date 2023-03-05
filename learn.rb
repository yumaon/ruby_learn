puts "Hello"

# timesメソッド
puts "timesメソッド"
5.times do
  puts rand(1..10)
end

puts "timeメソッド　ブロックの中で回数を表示させる"
5.times do |count|
  puts "#{count}: #{rand(1..10)}"
end

# for文
puts "for文"
for number in 1..10 do
  puts number
end

# オブジェクトでの繰り返し
animals = ["dog", "cat", "pig", "rabit"]
for animal in animals
  puts animal
end

# while文
i = 0
while i < 5
  puts "#{i}: while文の確認です"
  i += 1
  # iの値はfor文と違い勝手に増えないため、処理を間違えると無限ループになる。
end

sum = 1
while sum < 100
  puts sum
  sum += sum
end
puts "合計が#{sum}になりました"

# 一行で書く
sum = 1
sum += sum while sum < 100
puts "合計が#{sum}になりました"

# 処理の後で判定する
sum = 100
while sum < 100
  puts sum
  sum += sum
end
puts "合計が#{sum}になりました"

sum = 100
begin
  sum += sum
end while sum < 100
puts "合計が#{sum}になりました"

# until文
# 指定した条件が満たされるまで繰り返しを続ける。
sum = 1
until sum >= 100
  puts sum
  sum += sum
end
puts "合計が#{sum}になりました"

# 一行で書く
sum = 1
sum += sum until sum >= 100
puts "合計が#{sum}になりました"

# 処理の後で判定する
sum = 100
begin
  sum += sum
end until sum >= 100
puts "合計が#{sum}になりました"

# eachメソッド
animals = ["dog", "cat", "pig", "rabit"]
animals.each do |animal|
  puts animal
end

# prime#each
# 指定された整数の値以下の素数を返してくれる

require "prime"
Prime.each(31) do |prime|
  p prime
end