input = gets.split.map(&:to_i)

balance = input[0]
count = input[1]

fares = []
count.times do
  fares << gets.to_i
end

n = 0
point = 0

while n < count do
  if point >= fares[n]
    point -= fares[n]
    n += 1
    ic_card = [balance, point]
    puts ic_card.join(" ")
  else
    balance -= fares[n]
    point += fares[n] / 10
    n += 1
    ic_card = [balance, point]
    puts ic_card.join(" ")
  end
end