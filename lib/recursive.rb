# Questions: 
# Can I build recursive functions within a class?
# Do I need to build classes in order to use RSpec?
# Need help with recursion

# recursive_fib will build fibonacci sequence in an array using the recursive method
def recursive_fib(n)
	# create an array to store resulting sequence
	result = []
	# fib(0) = 0
	return result = [0] if n == 0
	# fib(1) = 1
	return result = [0, 1] if n == 1
	# fib(n) = fib(n-1) + fib(n-2)   for n > 1
	return result << (recursive_fib(n-1) + recursive_fib(n-2)) if n > 1
end

p recursive_fib(2)