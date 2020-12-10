require_relative 'knight'

class Board
  def bfs(start, target)
    knight = Knight.new(start)
    discovered = [knight]
    queue = [knight]

    until queue.empty?
      current = queue.shift
      return current if current.coordinates == target

      add_to_discovered_and_queue(current, discovered, queue)
    end
  end

  def add_to_discovered_and_queue(current_node, discovered, queue)
    current_node.possible_moves.each do |move|
      unless discovered.include?(move)
        discovered << move
        queue << move
      end
    end
  end

  def knight_moves(start, target)
    # TODO
  end
end

x = Board.new
p x.bfs([0, 0], [1, 2])
p x.bfs([0, 0], [7, 7])
