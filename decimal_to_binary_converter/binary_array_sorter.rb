require 'yaml'

class BinaryArraySorter
  attr_reader :config_data

  def initialize
    @config_data = YAML.load_file('decimal_to_binary_converter/config.yml')
  end

  def count_binary_number(binary_number, binary_number_to_count = @config_data['binary_number_to_count'] || '1')
    binary_number.to_s.count(binary_number_to_count)
  end

  def sort_binary_hash(binary_hash)
    sorted_array = binary_hash.sort do |(key1, val1), (key2, val2)|
      count_diff = count_binary_number(val1) - count_binary_number(val2)
      count_diff.zero? ? key1 <=> key2 : count_diff
    end

    ascending_order = @config_data['ascending_order']
    sorted_array.reverse! unless ascending_order
    sorted_array.to_h.values
  end
end
