fib =[0,1]
(1..100).each do |i|
  fib << fib[-1] + fib [-2]
end

print fib
