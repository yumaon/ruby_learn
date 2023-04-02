a = [*1..10]
b = [2, 6, 1, 1]

z = 0

while z < b.length do
    puts a[0..b[z] - 1 ].join(" ")
    a.shift(b[z])
    z += 1
end
