def iterative_fib(input)
	a = 0
	b = 1

	input.times do  
		temporary = a 				
		a = b								  				
		b = temporary + b					
	end
	return a
end

def recursive_fib(input)
  (input < 2) ? input : recursive_fib(input - 1) + recursive_fib(input - 2)
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end

