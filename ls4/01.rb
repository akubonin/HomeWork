puts "Enter number"
n = gets.chomp.to_i
sum = 0
for i in (1..n)
sum += i
end
puts "#{(1..n).to_a}"
puts "Summ = #{sum}"
puts "Avg = #{sum/n.to_f}"

