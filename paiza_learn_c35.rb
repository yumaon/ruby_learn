input = gets.split.map(&:to_i)
songs = input[0]
time_one_has = input[1] * 60 + input[2]

songs_ary = []
songs.times do 
  minute, second = gets.chomp.split
  total_seconds = minute.to_i * 60 + second.to_i
  songs_ary << total_seconds
end

songs_count = 0
songs_ary.sort.each do |song|
  if time_one_has >= 0 && time_one_has - song >= 0
    time_one_has -= song
    songs_count += 1
  else
    break
  end
end

puts songs_count