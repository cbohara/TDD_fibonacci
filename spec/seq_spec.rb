require 'spec_helper'

RSpec.describe Sequence, type: :mode do
	describe "should output fibonacci sequence" do 
		it "should output fibonacci sequence using iterative method" do 
			n = 9
			expected = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

			seq = Sequence.new(n)
			expect(seq.iterative_fib).to eq expected
		end

		# it "should output fibonacci sequence using recursive method" do
		# 	n = 9
		# 	expected = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

		# 	seq = Sequence.new(n)
		# 	expect(seq.recursive_fib).to eq expected
		# end
	end
end