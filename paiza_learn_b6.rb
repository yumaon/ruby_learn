gondora_count, group_count = gets.split.map(&:to_i)

go_i = 1
gondora_limit_hash = {}
gondora_total_people = {}
gondora_count.times do
  gondora_limit_hash[go_i] = gets.to_i
  gondora_total_people[go_i] = 0
  go_i += 1
end

group_ary = []
group_count.times do
  group_ary << gets.to_i
end

total_people = group_ary.sum

while total_people > 0 do
  gondora_limit_hash.each do |gon_num, limit|
    if group_ary[0] <= limit
      gondora_total_people[gon_num] += group_ary[0]
      total_people -= group_ary[0]
      group_ary.shift
      if group_ary.empty?
        break
      end
    else
      gondora_total_people[gon_num] += limit
      total_people -= limit
      group_ary[0] -= limit
    end
  end
end

gondora_total_people.each {|k, v| puts v }




# ちなみに↓hashを使わないで記述してみるとこうなる。

gondora_count, group_count = gets.split.map(&:to_i)

go_i = 0
gondora_limit_ary = []
gondora_total_people = []
gondora_count.times do
  gondora_limit_ary << [go_i, gets.to_i]
  gondora_total_people << [go_i, 0]
  go_i += 1
end

group_ary = []
group_count.times do
  group_ary << gets.to_i
end

total_people = group_ary.sum

while total_people > 0 do
  gondora_limit_ary.each do |gon_num, limit|
    if group_ary[0] <= limit
      gondora_total_people[gon_num][1] += group_ary[0]
      total_people -= group_ary[0]
      group_ary.shift
      if group_ary.empty?
        break
      end
    else
      gondora_total_people[gon_num][1] += limit
      total_people -= limit
      group_ary[0] -= limit
    end
  end
end

gondora_total_people.each { |a| puts a[1] }