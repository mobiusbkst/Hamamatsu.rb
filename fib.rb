def fib(x)
  fibonacci = Array.new(x)
  i = 0
  for i in 0..x
    if i == 0 || i == 1
      fibonacci[i] = 1
    else
      fibonacci[i] = fibonacci[i-1] + fibonacci[i-2]
    end
  end
  return fibonacci[x-1]
end

puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(10)
puts fib(100)
puts fib(1000)
puts fib(10000)
puts fib(100000)
puts fib(1000000)
