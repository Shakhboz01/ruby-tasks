# converts decimal to binary
class DecimalToBinaryConverter
  attr_reader :decimal_array

  def initialize(decimal_array)
    @decimal_array = decimal_array
  end

  def convert_to_binary_hash
    new_hash = {}
    @decimal_array.map {|number| new_hash[number] = number.to_s(2)}
    new_hash.to_h
  end
end
