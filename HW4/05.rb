puts "Enter number"
n = gets.chomp.to_i
f = 1

(1..n).each do |i|
  f *= i
  puts f
end

