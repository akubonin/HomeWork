puts "Enter number"
n = gets.chomp.to_i
puts "Enter divider"
d = gets.chomp.to_i

sum = 0
count = 0

(1..n).each do |i|
  if i % d == 0
    sum += i
    count += 1
    puts i
  end
end

puts "Count is #{count}"
puts "Summ = #{sum}"
puts "Avg = #{sum/count}"

