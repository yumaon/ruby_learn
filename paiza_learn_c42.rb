masu_count, shake_count = gets.split.map(&:to_i)
maps = {0 => "start"}
i = 1
(masu_count - 2).times do
  maps[i] = gets.chomp
  i += 1
end
maps[i] = "goal"

dice_value = []
shake_count.times do
  dice_value << gets.to_i
end

count = 1
my_position = 0
dice_value.each do |dice|
  if dice < (masu_count - 1 - my_position)
    my_position += dice
  else
    my_position = masu_count - 1
    break
  end

  if maps[my_position] == "-"
    my_position -= 1
  elsif maps[my_position] == "+"
    my_position += 1
  elsif maps[my_position] == "r"
    my_position = 0
  end

  if maps[my_position] != "goal"
    count += 1
  end
end

if maps[my_position] == "goal"
  puts maps[my_position]
  puts count
else
  puts "still"
  puts my_position
end