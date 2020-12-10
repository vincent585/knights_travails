require_relative 'knight'

class Board
  attr_accessor :knight

  def initialize
    @knight = Knight.new
  end

  def bfs(root = @knight, target)
    discovered = [root]
    queue = [root]

    until discovered.empty?
      current = queue.shift
      return 'not found' if current.nil?
      return current if current.coordinates == target

      knight.adjacent_nodes.each do |node|
        unless discovered.include?(node)
          discovered << node
          queue << node
        end
      end
    end
  end

  def knight_moves(start, target)
    # TODO
  end
end

x = Board.new
x.knight.coordinates = [0, 0]
p x.knight.possible_moves
p x.bfs([2, 2])
