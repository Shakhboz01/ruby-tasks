require_relative 'decimal_to_binary_converter'
require_relative 'binary_array_sorter'

# Represents a job that sorts an array of numbers using their binary representations.
class BinaryRepresentationSortingJob
  attr_reader :given_array, :binary_array_sorter, :result

  def initialize(given_array, binary_array_sorter = BinaryArraySorter.new)
    @given_array = given_array
    @decimal_to_binary_converter = DecimalToBinaryConverter.new(given_array)
    @binary_array_sorter = binary_array_sorter
  end

  def run
    binary_hash = @decimal_to_binary_converter.convert_to_binary_hash
    @result = binary_array_sorter.sort_binary_hash(binary_hash)
  end
end

# result
job = BinaryRepresentationSortingJob.new([3, 7, 8, 9, 13])
puts job.run
# run this job: `ruby decimal_to_binary_converter\binary_representation_sorting_job.rb`
