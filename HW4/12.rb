item = ""
cart = Hash.new
while item != "stop"
  puts "Product"
  item = gets.chomp.to_s
  if item != "stop"
    puts "Price"
    p = gets.chomp.to_f
    puts "Quantaty"
    q = gets.chomp.to_i
    cart[item] = {p:p, q:q}
  end

end
print cart
total = 0
cart.each do |k, v|
  total += v[:p]*v[:q]
  end
puts "Total sum is #{total}"
