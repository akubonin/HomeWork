puts "Enter number"
n = gets.chomp.to_i
sum = 0
even_count = 0

(1..n).each do |i|
  if i.even?
    sum += i
    even_count += 1
    puts i
  end
end

puts "Count is #{even_count}"
puts "Summ = #{sum}"
puts "Avg = #{sum/even_count}"

