# converts decimal to binary
class DecimalToBinaryConverter
  attr_reader :decimal_array

  def initialize(decimal_array)
    @decimal_array = decimal_array
  end

  def convert_to_binary_hash
    @decimal_array.map {|number| number.to_s(2)}
  end
end
