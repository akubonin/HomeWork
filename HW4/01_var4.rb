puts "Enter number"
n = gets.chomp.to_i
sum = 0
i = 0

(1..n).each do
i += 1
sum += i
end


puts "#{(1..n).to_a}"
puts "Summ = #{sum}"
puts "Avg = #{sum/n.to_f}"

