count = gets.to_i

ary = []
count.times do
    word, num = gets.split.map(&:chomp)
    ary << [word, num.to_i]
end

word_num_ary = {}

ary.each do |a|
    if word_num_ary[a[0]]
        word_num_ary[a[0]] += a[1]
    else
        word_num_ary[a[0]] = a[1]
    end
end

word_num_ary.sort { |a, b| b[1] <=> a[1] }.each {|a| puts a.join(" ") }