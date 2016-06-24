# build class Sequence to contain the methods iterative_fib and recursive_fib
# in order to build fibonacci sequence
class Sequence
	# allows me access input value of @n
	attr_accessor :n
	# initializer sets up variables to be referenced in the different functions
	def initialize(upper_index)
		@upper_index = upper_index
	end

	# iterative_fib will build a fibonacci sequence within an array
	def iterative_fib
		# create an array to store resulting sequence
		result = []
		# fib(0) = 0
		result << 0
		# fib(1) = 1
		result << 1
		# fib(n) = fib(n-1) + fib(n-2)
		for i in 2..@upper_index do
			result << (result[i - 1] + result[i - 2])
		end
		result
	end
end

#seq = Sequence.new(9)
#seq.iterative_fib