# 西暦年から平成年を求める

seireki = 2015
print "西暦#{seireki}年は"

# 西暦年から平成年を計算する
# 平成１年とは、西暦1989年。その差は、1988
# 西暦年 - 1988 = 平成○年

heisei = seireki - 1988
puts "平成#{heisei}年です"

# 演習課題「西暦年から昭和年を計算する」
seireki = rand(1926..1988)	# 西暦年
print "西暦#{seireki}年は"

# 昭和年を計算する
showa = seireki - 1925
# 昭和年を出力する
puts "昭和#{showa}年です。"
