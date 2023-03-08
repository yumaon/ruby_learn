dislike_num = gets.to_i
count = gets.to_i

select_room = []
count.times do
  room_num = gets.to_i
  unless room_num.digits.include?(dislike_num)
    select_room << room_num
  end
end

if select_room.empty?
  puts "none"
else
  puts select_room
end