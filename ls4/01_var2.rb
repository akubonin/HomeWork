puts "Enter number"
n = gets.chomp.to_i
sum = 0
i = 0

while i < n
i += 1
sum += i
end


puts "#{(1..n).to_a}"
puts "Summ = #{sum}"
puts "Avg = #{sum/n.to_f}"

