require 'minitest/autorun'
require_relative 'binario.rb' 

class BinaryConverterTest < Minitest::Test


	def test_convert_decimal_to_binary
		converter = BinaryConverter.new 131
		assert_equal [1, 0, 0, 0, 0, 0, 1, 1], converter.convert
	end

end