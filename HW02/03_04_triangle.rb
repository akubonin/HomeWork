puts "Enter the length of the first side"
side1 = gets.to_f
puts "Enter the length of the second side"
side2 = gets.to_f
puts "Enter the length of the third side"
side3 = gets.to_f
if side1 == side2 && side2 == side3
  puts "Это равностороний треугольник"
elsif side1 != side2 && side2 != side3 && side1 != side3
  puts "Это обычный треугольник"
else puts "Это равнобедренный треугольник"
end

if side1**2 + side2**2 == side3**2 ||
  side2**2 + side3**2 == side1**2 ||
  side1**2 + side3**2 == side2**2
  puts "Он еще и прямоугольный"
else puts "Oн не прямоугольный"
  end
