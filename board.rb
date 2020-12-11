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
        move.parent = current_node
      end
    end
  end

  def knight_moves(start, target)
    last_node = bfs(start, target)
    return if last_node.nil?

    path = retrieve_parent_nodes(last_node)
    path.each { |node| p node.coordinates }
  end

  def retrieve_parent_nodes(last_node)
    path = [last_node]
    until last_node.parent.nil?
      path.unshift(last_node.parent)
      last_node = last_node.parent
    end
    path
  end
end

x = Board.new
x.knight_moves([0, 0], [7, 7])
