num = gets.to_i
word = gets.chomp.split("")

w_ary = [*"A".."Z"]

num_ary = []
word.each do |w|
    w_ary.each_with_index {|a, i| num_ary << i if a == w }
end

w_ary.each_slice(num)

w_x_ary = w_ary.each_slice(num).to_a
w_y_ary = w_ary.reverse.each_slice(num).to_a

x_w = w_x_ary.shift
y_w = w_y_ary.shift.reverse
x_ary = w_x_ary.insert(-1, x_w).flatten
y_ary = w_y_ary.flatten.reverse.insert(0, y_w).flatten

num_ary.each_with_index do |num, j|
    if (j + 1).even?
        x_ary.each_with_index {|a, i| print a if i == num }
    else
        y_ary.each_with_index {|a, i| print a if i == num }
    end
end