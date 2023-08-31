def max_multiplication(string)
  return nil unless string.is_a?(String)
  numbers_in_row = 4
  action = '*'

  combination = string.scan(/\d+/)
                      .select{|a| a.to_s.length >= numbers_in_row}

  return nil if combination.empty?

  combination.first.chars.map(&:to_i).reduce(action.to_sym)
end
