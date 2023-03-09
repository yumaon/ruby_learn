status = gets.split.map(&:to_i)
count = gets.to_i

evolvable = []
count.times do
  info = gets.split(" ")
  monster = info[0].to_s
  terms_status = info[1..6].map(&:to_i)
  if status[0] >= terms_status[0] && status[0] <= terms_status[1]
    if status[1] >= terms_status[2] && status[1] <= terms_status[3]
      if status[2] >= terms_status[4] && status[2] <= terms_status[5]
        evolvable << monster
      end
    end
  end
end

if evolvable.empty?
  puts "no evolution"
else
  puts evolvable
end