require 'minitest/autorun'
require 'zhalo_calculator'

class CalculatorTest < MiniTest::Test

	def test_add
		assert_equal "result: 8",
			Calculator.add(5, 3)
	end
	
	def test_subtract
		assert_equal "result: 11",
			Calculator.subtract(15, 4)
	end
	
	def test_multiply
		assert_equal "result: 24",
			Calculator.multiply(3, 8)
	end
	
	def test_divide
		assert_equal "result: 3",
			Calculator.divide(24, 8)
	end
	
	def test_exponent1
		assert_equal "result: 8",
			Calculator.exp(2, 3)
	end
	
	def test_exponent2
		assert_equal "result: 1",
			Calculator.exp(9, 0)
	end
	
	def test_exponent3
		assert_equal "result: -64",
			Calculator.exp(-4, 3)
	end
	
	def test_exponent4
		assert_equal "result: 9",
			Calculator.exp(-3, 2)
	end
	
	def test_add_multiple_parameters
		assert_equal "result: 12",
			Calculator.add(4, 4, 4)
	end
	
	def test_subtract_multiple_parameters
		assert_equal "result: 9",
			Calculator.subtract(13, 1, 3)
	end
	
	def test_multiply_multiple_parameters
		assert_equal "result: 100",
			Calculator.multiply(5, 2, 10)
	end
	
	def test_divide_multiple_parameters
		assert_equal "result: 5",
			Calculator.divide(125, 5, 5)
	end
	
	def test_add_single_parameter
		assert_equal "result: 5",
			Calculator.add(5)
	end
	
	def test_subtract_single_parameter
		assert_equal "result: 9",
			Calculator.subtract(9)
	end
	
	def test_multiply_single_parameter
		assert_equal "result: 12",
			Calculator.multiply(12)
	end
	
	def test_divide_single_parameter
		assert_equal "result: 998",
			Calculator.divide(998)
	end
	
	#def test_sqrt1
	#	assert_equal "result: 0",
	#		Calculator.root(0)
	#end
	
	#def test_sqrt2
	#	assert_equal "result: NaN",
	#	Calculator.root(-1)
	#end
	
end
