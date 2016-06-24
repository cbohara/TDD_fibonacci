# build class Sequence to contain the methods iterative_fib and recursive_fib
# in order to build fibonacci sequence
class Sequence
	# allows me access input value of @n
	attr_accessor :n
	# initializer sets up variables to be referenced in the different functions
	def initialize(n)
		@n = n
	end

	# iterative_fib will build a fibonacci sequence within an array
	def iterative_fib
		# fib(0) = 0
		
		# fib(1) = 1
		# fib(n)= fib(n-1) + fib(n-2)
	end
end