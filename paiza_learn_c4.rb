number = gets.to_i

passing_person = 0
number.times do
  info = gets.split(" ")
  category = info[0].to_s
  points = info[1..5].map(&:to_i)
  if points.sum >= 350
    if category == "s" && points[1] + points[2] >= 160
      passing_person += 1
    elsif category == "l" && points[3] + points[4] >= 160
      passing_person += 1
    end
  end
end
puts passing_person