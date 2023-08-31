require 'yaml';

class BinaryArraySorter
  attr_reader :config_data

  def initialize
    @config_data = YAML.load_file('config.yml')
  end

  def count_binary_number(binary_numbers, binary_number_to_count = @config_data['binary_number_to_count'] || '1')
    binary_numbers.to_s.count(binary_number_to_count)
  end

  def sort_binary_hash(binary_hash, ascending_order = @config_data['ascending_order'])
    sorted_hash = binary_hash.sort_by { |k, v| [count_binary_number(v)] }
    sorted_hash = sorted_hash.reverse unless ascending_order
    sorted_hash
  end
end
