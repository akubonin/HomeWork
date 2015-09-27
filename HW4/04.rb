puts "Enter number"
n = gets.chomp.to_i
sum = 0

(1..n).each do |i|
  sum += i**i
  puts i
end


puts "Summ = #{sum}"
puts "Avg = #{sum/n.to_f}"

