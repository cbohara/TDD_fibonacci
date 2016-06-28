class Sequence
    # global variable
    @@count = 0
    # class method
    # initializer sets up variables to be referenced in the different functions
    def initialize(upper_index)
        #throw will terminate execution early when no further work is needed
        throw "FAIL, too big" if upper_index < 0
        # instance variable for each object
        @upper_index = upper_index
        # global variable will track number count in sequence
        @@count += 1
    end

    # iterative_fib will build fibonacci sequence in an array using the iterative method
    # change to just return answer not an array
    # instance method
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
    
  def recursive_fib(number)
    (number < 2) ? number : recursive_fib(number - 1) + recursive_fib(number - 2)
  end
      
    def fib_seq
      result = []
      (0..@upper_index).each {|x| result << recursive_fib(x)}
      return result
    end
end

  seq = Sequence.new(30)
  puts seq.fib_seq.to_s
  


# seq = Sequence.new(900)
# puts seq.iterative_fib.to_s