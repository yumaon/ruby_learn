gondora_count, group_count = gets.split.map(&:to_i)

go_i = 1
gondora_limit_hash = {}
gondora_total_people = {}
gondora_count.times do
  gondora_limit_hash[go_i] = gets.to_i
  gondora_total_people[go_i] = 0
  go_i += 1
end
gondora_limit_hash = gondora_limit_hash.to_a.reverse.to_h


gr_i = 1
group_hash = {}
group_count.times do
  group_hash[gr_i] = gets.to_i
  gr_i += 1
end

total_people = 0
group_hash.each { |k, v| total_people += v }
defo_people = total_people

i = 1
while total_people != 0 do
  gondora_limit_hash.each do |gon_num, limit|
    if group_hash[i] < limit
      if total_people == defo_people
        gondora_total_people[1] += group_hash[i]
      else
        gondora_total_people[gon_num] += group_hash[i]
      end
      total_people -= group_hash[i]
      group_hash[i] -= group_hash[i]
      i += 1
      if total_people == 0
          break
      end
    else
      gondora_total_people[gon_num] += limit
      total_people -= limit
      group_hash[i] -= limit
      if total_people == 0
          break
      end
    end
  end
  i = 1
end

gondora_total_people.each {|k, v| puts v }






gondora_count, group_count = gets.split.map(&:to_i)

go_i = 1
gondora_limit_hash = {}
gondora_total_people = {}
gondora_count.times do
  gondora_limit_hash[go_i] = gets.to_i
  gondora_total_people[go_i] = 0
  go_i += 1
end
# gondora_limit_hash = gondora_limit_hash.to_a.reverse.to_h


gr_i = 1
group_hash = {}
group_count.times do
  group_hash[gr_i] = gets.to_i
  gr_i += 1
end

total_people = 0
group_hash.each { |k, v| total_people += v }
defo_people = total_people

p group_hash
p gondora_limit_hash
p gondora_total_people

p_i = 1
g_i = 1
while total_people != 0 do
  while p_i <= group_count do
    # group_hash.each do |group_num, people_num|
      while g_i <= gondora_count do
        if gondora_limit_hash[g_i] > group_hash[p_i]
          gondora_total_people[g_i] += group_hash[p_i]
          total_people -= group_hash[p_i]
          group_hash.delete(group_hash[p_i])
          p_i += 1
          g_i += 1
        else
          gondora_total_people[g_i] += group_hash[p_i]
          total_people -= group_hash[p_i]
          group_hash[p_i] -= limit
          g_i += 1
        end
      end
    # end
  end
end


gondora_total_people.each {|k, v| puts v }
p gondora_total_people