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
      possible_coordinates << new_coordinates unless new_coordinates.include?(nil)
    end
    possible_coordinates
  end
end
