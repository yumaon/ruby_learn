require  'bigdecimal'
meat, meat_sold, processing_sold = gets.split.map(&:to_f)

meat_sold = meat_sold / 100
processing_sold = processing_sold / 100

first = BigDecimal("#{meat}") - (BigDecimal("#{meat}") * BigDecimal("#{meat_sold}"))

second = BigDecimal("#{first}") - (BigDecimal("#{first}") * BigDecimal("#{processing_sold}"))

puts second.to_f