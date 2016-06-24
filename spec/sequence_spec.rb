require 'spec_helper'

RSpec.describe Sequence, type: :model do
	describe "should output fibonacci sequence" do 
		it "should output fibonacci sequence using iterative method" do 
			n = 9
			expected = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
			

			sequence = Sequence.new(n)
			expect(sequence.interative_fib.result).to eq expected
		end

		it "should output fibonacci sequence using recursive method" do
			n = 9
			expected = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

			sequence = Sequence.new(n)
			expect(sequence.recursive_fib.result).to eq expected
		end
	end
end