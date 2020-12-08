require_relative 'node'

class Knight
  BASIC_MOVES =
    [
      [1, 2], [2, 1], [-1, 2], [-2, 1], # upward moves
      [1, -2], [2, -1], [-1, -2], [-2, -1] # downward moves
    ].freeze

  def possible_moves(current_position)
    possible_coordinates = []
    BASIC_MOVES.each do |move|
      new_coordinates = move.zip(current_position).map { |x, y| x + y if (x + y).between?(0, 7) }
      possible_coordinates << Node.new(new_coordinates) unless new_coordinates.include?(nil)
    end
    possible_coordinates
  end
end

x = Knight.new
p x.possible_moves([0, 0])
p x.possible_moves([1, 2])
p x.possible_moves([2, 1])