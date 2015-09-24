puts "Specify a"
a = gets.to_f
puts "Specify b"
b = gets.to_f
puts "Specify c"
c = gets.to_f

d = b**2 - (4*a*c)

if d > 0
  puts "D = #{d}. x1 = #{(-b+Math.sqrt(d))/(2*a)}. x2 = #{(-b+Math.sqrt(d))/(2*a)}."
elsif d == 0
  puts "D = #{d}. x = #{-b/(2*a)}."
else puts "D = #{d}. Корней нет"
end



