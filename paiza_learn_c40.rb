word_count, page_word_count, search_page = gets.split.map(&:to_i)
w = gets.chomp.split
words = w.sort.each_slice(page_word_count).to_a
puts words[search_page - 1]