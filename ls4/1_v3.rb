puts "Enter number"
n = gets.chomp.to_i
sum = 0
i = 0

until i > n

sum += i
i += 1
end


puts "#{(1..n).to_a}"
puts "Summ = #{sum}"
puts "Avg = #{sum/n.to_f}"

